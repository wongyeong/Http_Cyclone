pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;

package Error_H is

   type Error_T is (
      NO_ERROR,
      ERROR_FAILURE ,
      ERROR_INVALID_PARAMETER,
      ERROR_PARAMETER_OUT_OF_RANGE,
      ERROR_BAD_CRC,
      ERROR_BAD_BLOCK,
      ERROR_INVALID_RECIPIENT,
      ERROR_INVALID_INTERFACE,
      ERROR_INVALID_ENDPOINT,
      ERROR_INVALID_ALT_SETTING,
      ERROR_UNSUPPORTED_REQUEST,
      ERROR_UNSUPPORTED_CONFIGURATION,
      ERROR_UNSUPPORTED_FEATURE,
      ERROR_ENDPOINT_BUSY,
      ERROR_USB_RESET,
      ERROR_ABORTED,
      ERROR_OUT_OF_MEMORY,
      ERROR_OUT_OF_RESOURCES,
      ERROR_INVALID_REQUEST,
      ERROR_NOT_IMPLEMENTED,
      ERROR_VERSION_NOT_SUPPORTED,
      ERROR_INVALID_SYNTAX,
      ERROR_AUTHENTICATION_FAILED,
      ERROR_UNEXPECTED_RESPONSE,
      ERROR_INVALID_RESPONSE,
      ERROR_UNEXPECTED_VALUE,
      ERROR_OPEN_FAILED,
      ERROR_CONNECTION_FAILED,
      ERROR_CONNECTION_REFUSED,
      ERROR_CONNECTION_CLOSING,
      ERROR_CONNECTION_RESET,
      ERROR_NOT_CONNECTED,
      ERROR_ALREADY_CLOSED,
      ERROR_ALREADY_CONNECTED,
      ERROR_INVALID_SOCKET,
      ERROR_PROTOCOL_UNREACHABLE,
      ERROR_PORT_UNREACHABLE,
      ERROR_INVALID_FRAME,
      ERROR_INVALID_HEADER,
      ERROR_WRONG_CHECKSUM,
      ERROR_WRONG_IDENTIFIER,
      ERROR_WRONG_CLIENT_ID,
      ERROR_WRONG_SERVER_ID,
      ERROR_WRONG_COOKIE,
      ERROR_NO_RESPONSE,
      ERROR_RECEIVE_QUEUE_FULL,
      ERROR_TIMEOUT,
      ERROR_WOULD_BLOCK,
      ERROR_INVALID_NAME,
      ERROR_INVALID_OPTION,
      ERROR_UNEXPECTED_STATE,
      ERROR_INVALID_COMMAND,
      ERROR_INVALID_PROTOCOL,
      ERROR_INVALID_STATUS,
      ERROR_INVALID_ADDRESS,
      ERROR_INVALID_MESSAGE,
      ERROR_INVALID_KEY,
      ERROR_INVALID_KEY_LENGTH,
      ERROR_INVALID_EPOCH,
      ERROR_INVALID_SEQUENCE_NUMBER,
      ERROR_INVALID_CHARACTER,
      ERROR_INVALID_LENGTH,
      ERROR_INVALID_PADDING,
      ERROR_INVALID_MAC,
      ERROR_INVALID_TAG,
      ERROR_INVALID_TYPE,
      ERROR_INVALID_VALUE,
      ERROR_INVALID_CLASS,
      ERROR_INVALID_VERSION,
      ERROR_INVALID_PIN_CODE,
      ERROR_WRONG_LENGTH,
      ERROR_WRONG_TYPE,
      ERROR_WRONG_ENCODING,
      ERROR_WRONG_VALUE,
      ERROR_INCONSISTENT_VALUE,
      ERROR_UNSUPPORTED_TYPE,
      ERROR_UNSUPPORTED_ALGO,
      ERROR_UNSUPPORTED_CIPHER_SUITE,
      ERROR_UNSUPPORTED_CIPHER_MODE,
      ERROR_UNSUPPORTED_CIPHER_ALGO,
      ERROR_UNSUPPORTED_HASH_ALGO,
      ERROR_UNSUPPORTED_KEY_EXCH_METHOD,
      ERROR_UNSUPPORTED_SIGNATURE_ALGO,
      ERROR_UNSUPPORTED_ELLIPTIC_CURVE,
      ERROR_INVALID_SIGNATURE_ALGO,
      ERROR_CERTIFICATE_REQUIRED,
      ERROR_MESSAGE_TOO_LONG,
      ERROR_OUT_OF_RANGE,
      ERROR_MESSAGE_DISCARDED,
      ERROR_INVALID_PACKET,
      ERROR_BUFFER_EMPTY,
      ERROR_BUFFER_OVERFLOW,
      ERROR_BUFFER_UNDERFLOW,
      ERROR_INVALID_RESOURCE,
      ERROR_INVALID_PATH,
      ERROR_NOT_FOUND,
      ERROR_ACCESS_DENIED,
      ERROR_NOT_WRITABLE,
      ERROR_AUTH_REQUIRED,
      ERROR_TRANSMITTER_BUSY,
      ERROR_NO_RUNNING,
      ERROR_INVALID_FILE,
      ERROR_FILE_NOT_FOUND,
      ERROR_FILE_OPENING_FAILED,
      ERROR_FILE_READING_FAILED,
      ERROR_END_OF_FILE,
      ERROR_UNEXPECTED_END_OF_FILE,
      ERROR_UNKNOWN_FILE_FORMAT,
      ERROR_INVALID_DIRECTORY,
      ERROR_DIRECTORY_NOT_FOUND,
      ERROR_FILE_SYSTEM_NOT_SUPPORTED,
      ERROR_UNKNOWN_FILE_SYSTEM,
      ERROR_INVALID_FILE_SYSTEM,
      ERROR_INVALID_BOOT_SECTOR_SIGNATURE,
      ERROR_INVALID_SECTOR_SIZE,
      ERROR_INVALID_CLUSTER_SIZE,
      ERROR_INVALID_FILE_RECORD_SIZE,
      ERROR_INVALID_INDEX_BUFFER_SIZE,
      ERROR_INVALID_VOLUME_DESCRIPTOR_SIGNATURE,
      ERROR_INVALID_VOLUME_DESCRIPTOR,
      ERROR_INVALID_FILE_RECORD,
      ERROR_INVALID_INDEX_BUFFER,
      ERROR_INVALID_DATA_RUNS,
      ERROR_WRONG_TAG_IDENTIFIER,
      ERROR_WRONG_TAG_CHECKSUM,
      ERROR_WRONG_MAGIC_NUMBER,
      ERROR_WRONG_SEQUENCE_NUMBER,
      ERROR_DESCRIPTOR_NOT_FOUND,
      ERROR_ATTRIBUTE_NOT_FOUND,
      ERROR_RESIDENT_ATTRIBUTE,
      ERROR_NOT_RESIDENT_ATTRIBUTE,
      ERROR_INVALID_SUPER_BLOCK,
      ERROR_INVALID_SUPER_BLOCK_SIGNATURE,
      ERROR_INVALID_BLOCK_SIZE,
      ERROR_UNSUPPORTED_REVISION_LEVEL,
      ERROR_INVALID_INODE_SIZE,
      ERROR_INODE_NOT_FOUND,
      ERROR_UNEXPECTED_MESSAGE,
      ERROR_URL_TOO_LONG,
      ERROR_QUERY_STRING_TOO_LONG,
      ERROR_NO_ADDRESS,
      ERROR_NO_BINDING,
      ERROR_NOT_ON_LINK,
      ERROR_USE_MULTICAST,
      ERROR_NAK_RECEIVED,
      ERROR_EXCEPTION_RECEIVED,
      ERROR_NO_CARRIER,
      ERROR_INVALID_LEVEL,
      ERROR_WRONG_STATE,
      ERROR_END_OF_STREAM,
      ERROR_LINK_DOWN,
      ERROR_INVALID_OPTION_LENGTH,
      ERROR_IN_PROGRESS,
      ERROR_NO_ACK,
      ERROR_INVALID_METADATA,
      ERROR_NOT_CONFIGURED,
      ERROR_NAME_RESOLUTION_FAILED,
      ERROR_NO_ROUTE,
      ERROR_WRITE_FAILED,
      ERROR_READ_FAILED,
      ERROR_UPLOAD_FAILED,
      ERROR_READ_ONLY_ACCESS,
      ERROR_INVALID_SIGNATURE,
      ERROR_INVALID_TICKET,
      ERROR_BAD_RECORD_MAC,
      ERROR_RECORD_OVERFLOW,
      ERROR_HANDSHAKE_FAILED,
      ERROR_NO_CERTIFICATE,
      ERROR_BAD_CERTIFICATE,
      ERROR_UNSUPPORTED_CERTIFICATE,
      ERROR_CERTIFICATE_EXPIRED,
      ERROR_CERTIFICATE_REVOKED,
      ERROR_UNKNOWN_CA,
      ERROR_DECODING_FAILED,
      ERROR_DECRYPTION_FAILED,
      ERROR_ILLEGAL_PARAMETER,
      ERROR_MISSING_EXTENSION,
      ERROR_UNSUPPORTED_EXTENSION,
      ERROR_INAPPROPRIATE_FALLBACK,
      ERROR_NO_APPLICATION_PROTOCOL,
      ERROR_MORE_DATA_REQUIRED,
      ERROR_TLS_NOT_SUPPORTED,
      ERROR_PRNG_NOT_READY,
      ERROR_SERVICE_CLOSING,
      ERROR_INVALID_TIMESTAMP,
      ERROR_NO_DNS_SERVER,
      ERROR_OBJECT_NOT_FOUND,
      ERROR_INSTANCE_NOT_FOUND,
      ERROR_ADDRESS_NOT_FOUND,
      ERROR_UNKNOWN_IDENTITY,
      ERROR_UNKNOWN_ENGINE_ID,
      ERROR_UNKNOWN_USER_NAME,
      ERROR_UNKNOWN_CONTEXT,
      ERROR_UNAVAILABLE_CONTEXT,
      ERROR_UNSUPPORTED_SECURITY_LEVEL,
      ERROR_NOT_IN_TIME_WINDOW,
      ERROR_AUTHORIZATION_FAILED,
      ERROR_INVALID_FUNCTION_CODE,
      ERROR_DEVICE_BUSY,
      ERROR_REQUEST_REJECTED,
      ERROR_INVALID_CHANNEL,
      ERROR_UNKNOWN_SERVICE,
      ERROR_UNKNOWN_REQUEST,
      ERROR_FLOW_CONTROL,
      ERROR_INVALID_PASSWORD,
      ERROR_INVALID_HANDLE,
      ERROR_BAD_NONCE,
      ERROR_UNEXPECTED_STATUS,
      ERROR_RESPONSE_TOO_LARGE,
      ERROR_NO_MATCH,
      ERROR_PARTIAL_MATCH
   );

   for error_t use (
      NO_ERROR => 0,
      ERROR_FAILURE => 1,
      ERROR_INVALID_PARAMETER => 2,
      ERROR_PARAMETER_OUT_OF_RANGE => 3,
      ERROR_BAD_CRC => 4,
      ERROR_BAD_BLOCK => 5,
      ERROR_INVALID_RECIPIENT => 6,
      ERROR_INVALID_INTERFACE => 7,
      ERROR_INVALID_ENDPOINT => 8,
      ERROR_INVALID_ALT_SETTING => 9,
      ERROR_UNSUPPORTED_REQUEST => 10,
      ERROR_UNSUPPORTED_CONFIGURATION => 11,
      ERROR_UNSUPPORTED_FEATURE => 12,
      ERROR_ENDPOINT_BUSY => 13,
      ERROR_USB_RESET => 14,
      ERROR_ABORTED => 15,
      ERROR_OUT_OF_MEMORY => 100,
      ERROR_OUT_OF_RESOURCES => 101,
      ERROR_INVALID_REQUEST => 102,
      ERROR_NOT_IMPLEMENTED => 103,
      ERROR_VERSION_NOT_SUPPORTED => 104,
      ERROR_INVALID_SYNTAX => 105,
      ERROR_AUTHENTICATION_FAILED => 106,
      ERROR_UNEXPECTED_RESPONSE => 107,
      ERROR_INVALID_RESPONSE => 108,
      ERROR_UNEXPECTED_VALUE => 109,
      ERROR_OPEN_FAILED => 200,
      ERROR_CONNECTION_FAILED => 201,
      ERROR_CONNECTION_REFUSED => 202,
      ERROR_CONNECTION_CLOSING => 203,
      ERROR_CONNECTION_RESET => 204,
      ERROR_NOT_CONNECTED => 205,
      ERROR_ALREADY_CLOSED => 206,
      ERROR_ALREADY_CONNECTED => 207,
      ERROR_INVALID_SOCKET => 208,
      ERROR_PROTOCOL_UNREACHABLE => 209,
      ERROR_PORT_UNREACHABLE => 210,
      ERROR_INVALID_FRAME => 211,
      ERROR_INVALID_HEADER => 212,
      ERROR_WRONG_CHECKSUM => 213,
      ERROR_WRONG_IDENTIFIER => 214,
      ERROR_WRONG_CLIENT_ID => 215,
      ERROR_WRONG_SERVER_ID => 216,
      ERROR_WRONG_COOKIE => 217,
      ERROR_NO_RESPONSE => 218,
      ERROR_RECEIVE_QUEUE_FULL => 219,
      ERROR_TIMEOUT => 220,
      ERROR_WOULD_BLOCK => 221,
      ERROR_INVALID_NAME => 222,
      ERROR_INVALID_OPTION => 223,
      ERROR_UNEXPECTED_STATE => 224,
      ERROR_INVALID_COMMAND => 225,
      ERROR_INVALID_PROTOCOL => 226,
      ERROR_INVALID_STATUS => 227,
      ERROR_INVALID_ADDRESS => 228,
      ERROR_INVALID_MESSAGE => 229,
      ERROR_INVALID_KEY => 230,
      ERROR_INVALID_KEY_LENGTH => 231,
      ERROR_INVALID_EPOCH => 232,
      ERROR_INVALID_SEQUENCE_NUMBER => 233,
      ERROR_INVALID_CHARACTER => 234,
      ERROR_INVALID_LENGTH => 235,
      ERROR_INVALID_PADDING => 236,
      ERROR_INVALID_MAC => 237,
      ERROR_INVALID_TAG => 238,
      ERROR_INVALID_TYPE => 239,
      ERROR_INVALID_VALUE => 240,
      ERROR_INVALID_CLASS => 241,
      ERROR_INVALID_VERSION => 242,
      ERROR_INVALID_PIN_CODE => 243,
      ERROR_WRONG_LENGTH => 244,
      ERROR_WRONG_TYPE => 245,
      ERROR_WRONG_ENCODING => 246,
      ERROR_WRONG_VALUE => 247,
      ERROR_INCONSISTENT_VALUE => 248,
      ERROR_UNSUPPORTED_TYPE => 249,
      ERROR_UNSUPPORTED_ALGO => 250,
      ERROR_UNSUPPORTED_CIPHER_SUITE => 251,
      ERROR_UNSUPPORTED_CIPHER_MODE => 252,
      ERROR_UNSUPPORTED_CIPHER_ALGO => 253,
      ERROR_UNSUPPORTED_HASH_ALGO => 254,
      ERROR_UNSUPPORTED_KEY_EXCH_METHOD => 255,
      ERROR_UNSUPPORTED_SIGNATURE_ALGO => 256,
      ERROR_UNSUPPORTED_ELLIPTIC_CURVE => 257,
      ERROR_INVALID_SIGNATURE_ALGO => 258,
      ERROR_CERTIFICATE_REQUIRED => 259,
      ERROR_MESSAGE_TOO_LONG => 260,
      ERROR_OUT_OF_RANGE => 261,
      ERROR_MESSAGE_DISCARDED => 262,
      ERROR_INVALID_PACKET => 263,
      ERROR_BUFFER_EMPTY => 264,
      ERROR_BUFFER_OVERFLOW => 265,
      ERROR_BUFFER_UNDERFLOW => 266,
      ERROR_INVALID_RESOURCE => 267,
      ERROR_INVALID_PATH => 268,
      ERROR_NOT_FOUND => 269,
      ERROR_ACCESS_DENIED => 270,
      ERROR_NOT_WRITABLE => 271,
      ERROR_AUTH_REQUIRED => 272,
      ERROR_TRANSMITTER_BUSY => 273,
      ERROR_NO_RUNNING => 274,
      ERROR_INVALID_FILE => 300,
      ERROR_FILE_NOT_FOUND => 301,
      ERROR_FILE_OPENING_FAILED => 302,
      ERROR_FILE_READING_FAILED => 303,
      ERROR_END_OF_FILE => 304,
      ERROR_UNEXPECTED_END_OF_FILE => 305,
      ERROR_UNKNOWN_FILE_FORMAT => 306,
      ERROR_INVALID_DIRECTORY => 307,
      ERROR_DIRECTORY_NOT_FOUND => 308,
      ERROR_FILE_SYSTEM_NOT_SUPPORTED => 400,
      ERROR_UNKNOWN_FILE_SYSTEM => 401,
      ERROR_INVALID_FILE_SYSTEM => 402,
      ERROR_INVALID_BOOT_SECTOR_SIGNATURE => 403,
      ERROR_INVALID_SECTOR_SIZE => 404,
      ERROR_INVALID_CLUSTER_SIZE => 405,
      ERROR_INVALID_FILE_RECORD_SIZE => 406,
      ERROR_INVALID_INDEX_BUFFER_SIZE => 407,
      ERROR_INVALID_VOLUME_DESCRIPTOR_SIGNATURE => 408,
      ERROR_INVALID_VOLUME_DESCRIPTOR => 409,
      ERROR_INVALID_FILE_RECORD => 410,
      ERROR_INVALID_INDEX_BUFFER => 411,
      ERROR_INVALID_DATA_RUNS => 412,
      ERROR_WRONG_TAG_IDENTIFIER => 413,
      ERROR_WRONG_TAG_CHECKSUM => 414,
      ERROR_WRONG_MAGIC_NUMBER => 415,
      ERROR_WRONG_SEQUENCE_NUMBER => 416,
      ERROR_DESCRIPTOR_NOT_FOUND => 417,
      ERROR_ATTRIBUTE_NOT_FOUND => 418,
      ERROR_RESIDENT_ATTRIBUTE => 419,
      ERROR_NOT_RESIDENT_ATTRIBUTE => 420,
      ERROR_INVALID_SUPER_BLOCK => 421,
      ERROR_INVALID_SUPER_BLOCK_SIGNATURE => 422,
      ERROR_INVALID_BLOCK_SIZE => 423,
      ERROR_UNSUPPORTED_REVISION_LEVEL => 424,
      ERROR_INVALID_INODE_SIZE => 425,
      ERROR_INODE_NOT_FOUND => 426,
      ERROR_UNEXPECTED_MESSAGE => 500,
      ERROR_URL_TOO_LONG => 501,
      ERROR_QUERY_STRING_TOO_LONG => 502,
      ERROR_NO_ADDRESS => 503,
      ERROR_NO_BINDING => 504,
      ERROR_NOT_ON_LINK => 505,
      ERROR_USE_MULTICAST => 506,
      ERROR_NAK_RECEIVED => 507,
      ERROR_EXCEPTION_RECEIVED => 508,
      ERROR_NO_CARRIER => 509,
      ERROR_INVALID_LEVEL => 510,
      ERROR_WRONG_STATE => 511,
      ERROR_END_OF_STREAM => 512,
      ERROR_LINK_DOWN => 513,
      ERROR_INVALID_OPTION_LENGTH => 514,
      ERROR_IN_PROGRESS => 515,
      ERROR_NO_ACK => 516,
      ERROR_INVALID_METADATA => 517,
      ERROR_NOT_CONFIGURED => 518,
      ERROR_NAME_RESOLUTION_FAILED => 519,
      ERROR_NO_ROUTE => 520,
      ERROR_WRITE_FAILED => 521,
      ERROR_READ_FAILED => 522,
      ERROR_UPLOAD_FAILED => 523,
      ERROR_READ_ONLY_ACCESS => 524,
      ERROR_INVALID_SIGNATURE => 525,
      ERROR_INVALID_TICKET => 526,
      ERROR_BAD_RECORD_MAC => 527,
      ERROR_RECORD_OVERFLOW => 528,
      ERROR_HANDSHAKE_FAILED => 529,
      ERROR_NO_CERTIFICATE => 530,
      ERROR_BAD_CERTIFICATE => 531,
      ERROR_UNSUPPORTED_CERTIFICATE => 532,
      ERROR_CERTIFICATE_EXPIRED => 533,
      ERROR_CERTIFICATE_REVOKED => 534,
      ERROR_UNKNOWN_CA => 535,
      ERROR_DECODING_FAILED => 536,
      ERROR_DECRYPTION_FAILED => 537,
      ERROR_ILLEGAL_PARAMETER => 538,
      ERROR_MISSING_EXTENSION => 539,
      ERROR_UNSUPPORTED_EXTENSION => 540,
      ERROR_INAPPROPRIATE_FALLBACK => 541,
      ERROR_NO_APPLICATION_PROTOCOL => 542,
      ERROR_MORE_DATA_REQUIRED => 543,
      ERROR_TLS_NOT_SUPPORTED => 544,
      ERROR_PRNG_NOT_READY => 545,
      ERROR_SERVICE_CLOSING => 546,
      ERROR_INVALID_TIMESTAMP => 547,
      ERROR_NO_DNS_SERVER => 548,
      ERROR_OBJECT_NOT_FOUND => 549,
      ERROR_INSTANCE_NOT_FOUND => 550,
      ERROR_ADDRESS_NOT_FOUND => 551,
      ERROR_UNKNOWN_IDENTITY => 552,
      ERROR_UNKNOWN_ENGINE_ID => 553,
      ERROR_UNKNOWN_USER_NAME => 554,
      ERROR_UNKNOWN_CONTEXT => 555,
      ERROR_UNAVAILABLE_CONTEXT => 556,
      ERROR_UNSUPPORTED_SECURITY_LEVEL => 557,
      ERROR_NOT_IN_TIME_WINDOW => 558,
      ERROR_AUTHORIZATION_FAILED => 559,
      ERROR_INVALID_FUNCTION_CODE => 560,
      ERROR_DEVICE_BUSY => 561,
      ERROR_REQUEST_REJECTED => 562,
      ERROR_INVALID_CHANNEL => 563,
      ERROR_UNKNOWN_SERVICE => 564,
      ERROR_UNKNOWN_REQUEST => 565,
      ERROR_FLOW_CONTROL => 566,
      ERROR_INVALID_PASSWORD => 567,
      ERROR_INVALID_HANDLE => 568,
      ERROR_BAD_NONCE => 569,
      ERROR_UNEXPECTED_STATUS => 570,
      ERROR_RESPONSE_TOO_LARGE => 571,
      ERROR_NO_MATCH => 572,
      ERROR_PARTIAL_MATCH => 573);


end Error_H;
