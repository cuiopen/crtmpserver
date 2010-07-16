/* 
*  Copyright (c) 2010,
*  Gavriloaie Eugen-Andrei (shiretu@gmail.com)
*  
*  This file is part of crtmpserver.
*  crtmpserver is free software: you can redistribute it and/or modify
*  it under the terms of the GNU General Public License as published by
*  the Free Software Foundation, either version 3 of the License, or
*  (at your option) any later version.
*  
*  crtmpserver is distributed in the hope that it will be useful,
*  but WITHOUT ANY WARRANTY; without even the implied warranty of
*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*  GNU General Public License for more details.
*  
*  You should have received a copy of the GNU General Public License
*  along with crtmpserver.  If not, see <http://www.gnu.org/licenses/>.
*/


#ifdef HAS_PROTOCOL_VAR
#include "protocols/variant/basevariantappprotocolhandler.h"
#include "application/baseclientapplication.h"
#include "protocols/protocolfactorymanager.h"
#include "application/baseclientapplication.h"
#include "netio/netio.h"
#include "application/clientapplicationmanager.h"
#include "protocols/variant/basevariantprotocol.h"

BaseVariantAppProtocolHandler::BaseVariantAppProtocolHandler(Variant &configuration)
: BaseAppProtocolHandler(configuration) {
	_urlCache["dummy"] = "dummy";
	_urlCache.RemoveKey("dummy");
#ifdef HAS_PROTOCOL_HTTP
	_outboundHttpBinVariant = ProtocolFactoryManager::ResolveProtocolChain(
			CONF_PROTOCOL_OUTBOUND_HTTP_BIN_VARIANT);
	_outboundHttpXmlVariant = ProtocolFactoryManager::ResolveProtocolChain(
			CONF_PROTOCOL_OUTBOUND_HTTP_XML_VARIANT);
	if (_outboundHttpBinVariant.size() == 0) {
		ASSERT("Unable to resolve prtocol stack %s",
				CONF_PROTOCOL_OUTBOUND_HTTP_BIN_VARIANT);
	}
	if (_outboundHttpXmlVariant.size() == 0) {
		ASSERT("Unable to resolve prtocol stack %s",
				CONF_PROTOCOL_OUTBOUND_HTTP_XML_VARIANT);
	}
#else
	FATAL("HTTP protocol not supported");
#endif /* HAS_PROTOCOL_HTTP */
}

BaseVariantAppProtocolHandler::~BaseVariantAppProtocolHandler() {
}

void BaseVariantAppProtocolHandler::RegisterProtocol(BaseProtocol *pProtocol) {
	FINEST("BaseVariantAppProtocolHandler::RegisterProtocol");
}

void BaseVariantAppProtocolHandler::UnRegisterProtocol(BaseProtocol *pProtocol) {
	FINEST("BaseVariantAppProtocolHandler::UnRegisterProtocol");
}

bool BaseVariantAppProtocolHandler::Send(string ip, uint16_t port, Variant &variant, bool xml) {
	NYIR;
}

bool BaseVariantAppProtocolHandler::Send(string url, Variant &variant, bool xml) {
	//1. Build the parameters
	Variant parameters = GetScaffold(url);
	if (parameters != V_MAP) {
		FATAL("Unable to get parameters scaffold");
		return false;
	}
	parameters["payload"] = variant;
	//FINEST("parameters:\n%s", STR(parameters.ToString()));

	//2. Start the HTTP request
	if (!TCPConnector<BaseVariantAppProtocolHandler>::Connect(parameters["ip"],
			parameters["port"],
			xml ? _outboundHttpXmlVariant : _outboundHttpBinVariant,
			parameters)) {
		FATAL("Unable to open connection");
		return false;
	}

	return true;
}

bool BaseVariantAppProtocolHandler::SignalProtocolCreated(BaseProtocol *pProtocol, Variant &parameters) {
	//1. Validate the protocol
	if (pProtocol->GetType() != PT_BIN_VAR &&
			pProtocol->GetType() != PT_XML_VAR) {
		FATAL("Invalid protocol type. Wanted: %s or %s; Got: %s",
				STR(tagToString(PT_BIN_VAR)),
				STR(tagToString(PT_XML_VAR)),
				STR(tagToString(pProtocol->GetType())));
		return false;
	}

	//2. Get the application
	BaseClientApplication *pApplication = ClientApplicationManager::FindAppByName(
			parameters["applicationName"]);
	if (pApplication == NULL) {
		FATAL("Unable to find application %s",
				STR(parameters["applicationName"]));
		return false;
	}

	//3. Register the protocol to it
	pProtocol->SetApplication(pApplication);

	//4. Do the actual request
	return ((BaseVariantProtocol *) pProtocol)->Send(parameters);
}

bool BaseVariantAppProtocolHandler::ProcessMessage(BaseVariantProtocol *pProtocol,
		Variant &lastSent, Variant &lastReceived) {
	FINEST("lastSent:\n%s", STR(lastSent.ToString()));
	FINEST("lastReceived:\n%s", STR(lastReceived.ToString()));
	return true;
}

Variant BaseVariantAppProtocolHandler::GetScaffold(string url) {
	//1. Search in the cache first
	if (_urlCache.HasKey(url)) {
		return _urlCache[url];
	}

	//2. Build it
	Variant result;

	//3. Split the URL into components
	string host;
	string ip;
	uint16_t port;
	string document;
	string username;
	string password;
	if (!ParseURL(url, host, port, username, password, document)) {
		FATAL("Invalid url: %s", STR(url));
		return Variant();
	}

	//4. Resolve the IP
	ip = GetHostByName(host);
	if (ip == "") {
		FATAL("Unable to resolve host %s into a valid ip", STR(host));
		return Variant();
	}

	//5. Fix the document
	if (document == "") {
		document = "/";
	}

	//6. build the end result
	result["username"] = username;
	result["password"] = password;
	result["host"] = host;
	result["ip"] = ip;
	result["port"] = port;
	result["document"] = document;
	result["applicationName"] = GetApplication()->GetName();

	//7. Save it in the cache
	_urlCache[url] = result;

	//8. Done
	return result;
}
#endif	/* HAS_PROTOCOL_VAR */

