pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

package Error_H is

   subtype error_t is unsigned;
   NO_ERROR : constant unsigned := 0;
   ERROR_FAILURE : constant unsigned := 1;
   ERROR_INVALID_PARAMETER : constant unsigned := 2;
   ERROR_PARAMETER_OUT_OF_RANGE : constant unsigned := 3;
   ERROR_BAD_CRC : constant unsigned := 4;
   ERROR_BAD_BLOCK : constant unsigned := 5;
   ERROR_INVALID_RECIPIENT : constant unsigned := 6;
   ERROR_INVALID_INTERFACE : constant unsigned := 7;
   ERROR_INVALID_ENDPOINT : constant unsigned := 8;
   ERROR_INVALID_ALT_SETTING : constant unsigned := 9;
   ERROR_UNSUPPORTED_REQUEST : constant unsigned := 10;
   ERROR_UNSUPPORTED_CONFIGURATION : constant unsigned := 11;
   ERROR_UNSUPPORTED_FEATURE : constant unsigned := 12;
   ERROR_ENDPOINT_BUSY : constant unsigned := 13;
   ERROR_USB_RESET : constant unsigned := 14;
   ERROR_ABORTED : constant unsigned := 15;
   ERROR_OUT_OF_MEMORY : constant unsigned := 100;
   ERROR_OUT_OF_RESOURCES : constant unsigned := 101;
   ERROR_INVALID_REQUEST : constant unsigned := 102;
   ERROR_NOT_IMPLEMENTED : constant unsigned := 103;
   ERROR_VERSION_NOT_SUPPORTED : constant unsigned := 104;
   ERROR_INVALID_SYNTAX : constant unsigned := 105;
   ERROR_AUTHENTICATION_FAILED : constant unsigned := 106;
   ERROR_UNEXPECTED_RESPONSE : constant unsigned := 107;
   ERROR_INVALID_RESPONSE : constant unsigned := 108;
   ERROR_UNEXPECTED_VALUE : constant unsigned := 109;
   ERROR_OPEN_FAILED : constant unsigned := 200;
   ERROR_CONNECTION_FAILED : constant unsigned := 201;
   ERROR_CONNECTION_REFUSED : constant unsigned := 202;
   ERROR_CONNECTION_CLOSING : constant unsigned := 203;
   ERROR_CONNECTION_RESET : constant unsigned := 204;
   ERROR_NOT_CONNECTED : constant unsigned := 205;
   ERROR_ALREADY_CLOSED : constant unsigned := 206;
   ERROR_ALREADY_CONNECTED : constant unsigned := 207;
   ERROR_INVALID_SOCKET : constant unsigned := 208;
   ERROR_PROTOCOL_UNREACHABLE : constant unsigned := 209;
   ERROR_PORT_UNREACHABLE : constant unsigned := 210;
   ERROR_INVALID_FRAME : constant unsigned := 211;
   ERROR_INVALID_HEADER : constant unsigned := 212;
   ERROR_WRONG_CHECKSUM : constant unsigned := 213;
   ERROR_WRONG_IDENTIFIER : constant unsigned := 214;
   ERROR_WRONG_CLIENT_ID : constant unsigned := 215;
   ERROR_WRONG_SERVER_ID : constant unsigned := 216;
   ERROR_WRONG_COOKIE : constant unsigned := 217;
   ERROR_NO_RESPONSE : constant unsigned := 218;
   ERROR_RECEIVE_QUEUE_FULL : constant unsigned := 219;
   ERROR_TIMEOUT : constant unsigned := 220;
   ERROR_WOULD_BLOCK : constant unsigned := 221;
   ERROR_INVALID_NAME : constant unsigned := 222;
   ERROR_INVALID_OPTION : constant unsigned := 223;
   ERROR_UNEXPECTED_STATE : constant unsigned := 224;
   ERROR_INVALID_COMMAND : constant unsigned := 225;
   ERROR_INVALID_PROTOCOL : constant unsigned := 226;
   ERROR_INVALID_STATUS : constant unsigned := 227;
   ERROR_INVALID_ADDRESS : constant unsigned := 228;
   ERROR_INVALID_MESSAGE : constant unsigned := 229;
   ERROR_INVALID_KEY : constant unsigned := 230;
   ERROR_INVALID_KEY_LENGTH : constant unsigned := 231;
   ERROR_INVALID_EPOCH : constant unsigned := 232;
   ERROR_INVALID_SEQUENCE_NUMBER : constant unsigned := 233;
   ERROR_INVALID_CHARACTER : constant unsigned := 234;
   ERROR_INVALID_LENGTH : constant unsigned := 235;
   ERROR_INVALID_PADDING : constant unsigned := 236;
   ERROR_INVALID_MAC : constant unsigned := 237;
   ERROR_INVALID_TAG : constant unsigned := 238;
   ERROR_INVALID_TYPE : constant unsigned := 239;
   ERROR_INVALID_VALUE : constant unsigned := 240;
   hERROR_UNSUPPORTED_CIPHER_SUITE : constant unsigned := 251;
   ERROR_UNSUPPORTED_CIPHER_MODE : constant unsigned := 252;
   ERROR_UNSUPPORTED_CIPHER_ALGO : constant unsigned := 253;
   ERROR_UNSUPPORTED_HASH_ALGO : constant unsigned := 254;
   ERROR_UNSUPPORTED_KEY_EXCH_METHOD : constant unsigned := 255;
   ERROR_UNSUPPORTED_SIGNATURE_ALGO : constant unsigned := 256;
   ERROR_UNSUPPORTED_ELLIPTIC_CURVE : constant unsigned := 257;
   ERROR_INVALID_SIGNATURE_ALGO : constant unsigned := 258;
   ERROR_CERTIFICATE_REQUIRED : constant unsigned := 259;
   ERROR_MESSAGE_TOO_LONG : constant unsigned := 260;
   ERROR_OUT_OF_RANGE : constant unsigned := 261;
   ERROR_MESSAGE_DISCARDED : constant unsigned := 262;
   ERROR_INVALID_PACKET : constant unsigned := 263;
   ERROR_BUFFER_EMPTY : constant unsigned := 264;
   ERROR_BUFFER_OVERFLOW : constant unsigned := 265;
   ERROR_BUFFER_UNDERFLOW : constant unsigned := 266;
   ERROR_INVALID_RESOURCE : constant unsigned := 267;
   ERROR_INVALID_PATH : constant unsigned := 268;
   ERROR_NOT_FOUND : constant unsigned := 269;
   ERROR_ACCESS_DENIED : constant unsigned := 270;
   ERROR_NOT_WRITABLE : constant unsigned := 271;
   ERROR_AUTH_REQUIRED : constant unsigned := 272;
   ERROR_TRANSMITTER_BUSY : constant unsigned := 273;
   ERROR_NO_RUNNING : constant unsigned := 274;
   ERROR_INVALID_FILE : constant unsigned := 300;
   ERROR_FILE_NOT_FOUND : constant unsigned := 301;
   ERhROR_INVALID_DIRECTORY : constant unsigned := 307;
   ERROR_DIRECTORY_NOT_FOUND : constant unsigned := 308;
   ERROR_FILE_SYSTEM_NOT_SUPPORTED : constant unsigned := 400;
   ERROR_UNKNOWN_FILE_SYSTEM : constant unsigned := 401;
   ERROR_INVALID_FILE_SYSTEM : constant unsigned := 402;
   ERROR_INVALID_BOOT_SECTOR_SIGNATURE : constant unsigned := 403;
   ERROR_INVALID_SECTOR_SIZE : constant unsigned := 404;
   ERROR_INVALID_CLUSTER_SIZE : constant unsigned := 405;
   ERROR_INVALID_FILE_RECORD_SIZE : constant unsigned := 406;
   ERROR_INVALID_INDEX_BUFFER_SIZE : constant unsigned := 407;
   ERROR_INVALID_VOLUME_DESCRIPTOR_SIGNATURE : constant unsigned := 408;
   ERROR_INVALID_VOLUME_DESCRIPTOR : constant unsigned := 409;
   ERROR_INVALID_FILE_RECORD : constant unsigned := 410;
   ERROR_INVALID_INDEX_BUFFER : constant unsigned := 411;
   ERROR_INVALID_DATA_RUNS : constant unsigned := 412;
   ERROR_WRONG_TAG_IDENTIFIER : constant unsigned := 413;
   ERROR_WRONG_TAG_CHECKSUM : constant unsigned := 414;
   ERROR_WRONG_MAGIC_NUMBER : constant unsigned := 415;
   ERROR_WRONG_SEQUENCE_NUMBER : constant unsigned := 416;
   ERROR_DESCRIPTOR_NOT_FOUND : constant unsigned := 417;
   ERROR_ATTRIBUTE_NOT_FOUND : constant unsigned := 418;
   ERROR_RESIDENT_ATTRIBUTE : constant unsigned := 419;
   ERROR_NOT_RESIDENT_ATTRIBUTE : constant unsigned := 420;
   ERROR_INVALID_SUPER_BLOCK : constant unsigned := 421;
   ERROR_INVALID_SUPER_BLOCK_SIGNATURE : constant unsigned := 422;
   ERROR_INVALID_BLOCK_SIZE : constant unsigned := 423;
   ERROR_UNSUPPORTED_REVISION_LEVEL : constant unsigned := 424;
   ERROR_INVALID_INODE_SIZE : constant unsigned := 425;
   ERROR_INODE_NOT_FOUND : constant unsigned := 426;
   ERROR_UNEXPECTED_MESSAGE : constant unsigned := 500;
   ERROR_URL_TOO_LONG : constant unsigned := 501;
   ERROR_QUERY_STRING_TOO_LONG : constant unsigned := 502;
   ERROR_NO_ADDRESS : constant unsigned := 503;
   ERROR_NO_BINDING : constant unsigned := 504;
   ERROR_NOT_ON_LINK : constant unsigned := 505;
   ERROR_USE_MULTICAST : constant unsigned := 506;
   ERROR_NAK_RECEIVED : constant unsigned := 507;
   ERROR_EXCEPTION_RECEIVED : constant unsigned := 508;
   ERROR_NO_CARRIER : constant unsigned := 509;
   ERROR_INVALID_LEVEL : constant unsigned := 510;
   ERROR_WRONG_STATE : constant unsigned := 511;
   ERROR_END_OF_STREAM : constant unsigned := 512;
   ERROR_LINK_DOWN : constant unsigned := 513;
   ERROR_INVALID_OPTION_LENGTH : constant unsigned := 514;
   ERROR_IN_PROGRESS : constant unsigned := 515;
   ERROR_NO_ACK : constant unsigned := 516;
   ERROR_INVALID_METADATA : constant unsigned := 517;
   ERROR_NOT_CONFIGURED : constant unsigned := 518;
   ERROR_NAME_RESOLUTION_FAILED : constant unsigned := 519;
   ERROR_NO_ROUTE : constant unsigned := 520;
   ERROR_WRITE_FAILED : constant unsigned := 521;
   ERROR_READ_FAILED : constant unsigned := 522;
   ERROR_UPLOAD_FAILED : constant unsigned := 523;
   ERROR_READ_ONLY_ACCESS : constant unsigned := 524;
   ERROR_INVALID_SIGNATURE : constant unsigned := 525;
   ERROR_INVALID_TICKET : constant unsigned := 526;
   ERROR_BAD_RECORD_MAC : constant unsigned := 527;
   ERROR_RECORD_OVERFLOW : constant unsigned := 528;
   ERROR_HANDSHAKE_FAILED : constant unsigned := 529;
   ERROR_NO_CERTIFICATE : constant unsigned := 530;
   ERROR_BAD_CERTIFICATE : constant unsigned := 531;
   ERROR_UNSUPPORTED_CERTIFICATE : constant unsigned := 532;
   ERROR_CERTIFICATE_EXPIRED : constant unsigned := 533;
   ERROR_CERTIFICATE_REVOKED : constant unsigned := 534;
   ERROR_UNKNOWN_CA : constant unsigned := 535;
   ERROR_DECODING_FAILED : constant unsigned := 536;
   ERROR_DECRYPTION_FAILED : constant unsigned := 537;
   ERROR_ILLEGAL_PARAMETER : constant unsigned := 538;
   ERROR_MISSING_EXTENSION : constant unsigned := 539;
   ERROR_UNSUPPORTED_EXTENSION : constant unsigned := 540;
   ERROR_INAPPROPRIATE_FALLBACK : constant unsigned := 541;
   ERROR_NO_APPLICATION_PROTOCOL : constant unsigned := 542;
   ERROR_MORE_DATA_REQUIRED : constant unsigned := 543;
   ERROR_TLS_NOT_SUPPORTED : constant unsigned := 544;
   ERROR_PRNG_NOT_READY : constant unsigned := 545;
   ERROR_SERVICE_CLOSING : constant unsigned := 546;
   ERROR_INVALID_TIMESTAMP : constant unsigned := 547;
   ERROR_NO_DNS_SERVER : constant unsigned := 548;
   ERROR_OBJECT_NOT_FOUND : constant unsigned := 549;
   ERROR_INSTANCE_NOT_FOUND : constant unsigned := 550;
   ERROR_ADDRESS_NOT_FOUND : constant unsigned := 551;
   ERROR_UNKNOWN_IDENTITY : constant unsigned := 552;
   ERROR_UNKNOWN_ENGINE_ID : constant unsigned := 553;
   ERROR_UNKNOWN_USER_NAME : constant unsigned := 554;
   ERROR_UNKNOWN_CONTEXT : constant unsigned := 555;
   ERROR_UNAVAILABLE_CONTEXT : constant unsigned := 556;
   ERROR_UNSUPPORTED_SECURITY_LEVEL : constant unsigned := 557;
   ERROR_NOT_IN_TIME_WINDOW : constant unsigned := 558;
   ERROR_AUTHORIZATION_FAILED : constant unsigned := 559;
   ERROR_INVALID_FUNCTION_CODE : constant unsigned := 560;
   ERROR_DEVICE_BUSY : constant unsigned := 561;
   ERROR_REQUEST_REJECTED : constant unsigned := 562;
   ERROR_INVALID_CHANNEL : constant unsigned := 563;
   ERROR_UNKNOWN_SERVICE : constant unsigned := 564;
   ERROR_UNKNOWN_REQUEST : constant unsigned := 565;
   ERROR_FLOW_CONTROL : constant unsigned := 566;
   ERROR_INVALID_PASSWORD : constant unsigned := 567;
   ERROR_INVALID_HANDLE : constant unsigned := 568;
   ERROR_BAD_NONCE : constant unsigned := 569;
   ERROR_UNEXPECTED_STATUS : constant unsigned := 570;
   ERROR_RESPONSE_TOO_LARGE : constant unsigned := 571;
   ERROR_NO_MATCH : constant unsigned := 572;
   ERROR_PARTIAL_MATCH : constant unsigned := 573;  -- ./src/common/error.h:282


end Error_H;