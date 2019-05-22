#
# Autogenerated by Thrift Compiler (0.11.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require 'line_types'

module AuthService
  class Client
    include ::Thrift::Client

    def updatePassword(authSessionId, request)
      send_updatePassword(authSessionId, request)
      return recv_updatePassword()
    end

    def send_updatePassword(authSessionId, request)
      send_message('updatePassword', UpdatePassword_args, :authSessionId => authSessionId, :request => request)
    end

    def recv_updatePassword()
      result = receive_message(UpdatePassword_result)
      return result.success unless result.success.nil?
      raise result.e unless result.e.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'updatePassword failed: unknown result')
    end

    def getAuthRSAKey(authSessionId, identityProvider)
      send_getAuthRSAKey(authSessionId, identityProvider)
      return recv_getAuthRSAKey()
    end

    def send_getAuthRSAKey(authSessionId, identityProvider)
      send_message('getAuthRSAKey', GetAuthRSAKey_args, :authSessionId => authSessionId, :identityProvider => identityProvider)
    end

    def recv_getAuthRSAKey()
      result = receive_message(GetAuthRSAKey_result)
      return result.success unless result.success.nil?
      raise result.e unless result.e.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'getAuthRSAKey failed: unknown result')
    end

    def openAuthSession(request)
      send_openAuthSession(request)
      return recv_openAuthSession()
    end

    def send_openAuthSession(request)
      send_message('openAuthSession', OpenAuthSession_args, :request => request)
    end

    def recv_openAuthSession()
      result = receive_message(OpenAuthSession_result)
      return result.success unless result.success.nil?
      raise result.e unless result.e.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'openAuthSession failed: unknown result')
    end

    def normalizePhoneNumber(countryCode, phoneNumber, countryCodeHint)
      send_normalizePhoneNumber(countryCode, phoneNumber, countryCodeHint)
      return recv_normalizePhoneNumber()
    end

    def send_normalizePhoneNumber(countryCode, phoneNumber, countryCodeHint)
      send_message('normalizePhoneNumber', NormalizePhoneNumber_args, :countryCode => countryCode, :phoneNumber => phoneNumber, :countryCodeHint => countryCodeHint)
    end

    def recv_normalizePhoneNumber()
      result = receive_message(NormalizePhoneNumber_result)
      return result.success unless result.success.nil?
      raise result.e unless result.e.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'normalizePhoneNumber failed: unknown result')
    end

    def respondE2EELoginRequest(verifier, publicKey, encryptedKeyChain, hashKeyChain, errorCode)
      send_respondE2EELoginRequest(verifier, publicKey, encryptedKeyChain, hashKeyChain, errorCode)
      recv_respondE2EELoginRequest()
    end

    def send_respondE2EELoginRequest(verifier, publicKey, encryptedKeyChain, hashKeyChain, errorCode)
      send_message('respondE2EELoginRequest', RespondE2EELoginRequest_args, :verifier => verifier, :publicKey => publicKey, :encryptedKeyChain => encryptedKeyChain, :hashKeyChain => hashKeyChain, :errorCode => errorCode)
    end

    def recv_respondE2EELoginRequest()
      result = receive_message(RespondE2EELoginRequest_result)
      raise result.e unless result.e.nil?
      return
    end

    def confirmE2EELogin(verifier, deviceSecret)
      send_confirmE2EELogin(verifier, deviceSecret)
      return recv_confirmE2EELogin()
    end

    def send_confirmE2EELogin(verifier, deviceSecret)
      send_message('confirmE2EELogin', ConfirmE2EELogin_args, :verifier => verifier, :deviceSecret => deviceSecret)
    end

    def recv_confirmE2EELogin()
      result = receive_message(ConfirmE2EELogin_result)
      return result.success unless result.success.nil?
      raise result.e unless result.e.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'confirmE2EELogin failed: unknown result')
    end

    def logoutZ()
      send_logoutZ()
      recv_logoutZ()
    end

    def send_logoutZ()
      send_message('logoutZ', LogoutZ_args)
    end

    def recv_logoutZ()
      result = receive_message(LogoutZ_result)
      raise result.e unless result.e.nil?
      return
    end

    def loginZ(loginRequest)
      send_loginZ(loginRequest)
      return recv_loginZ()
    end

    def send_loginZ(loginRequest)
      send_message('loginZ', LoginZ_args, :loginRequest => loginRequest)
    end

    def recv_loginZ()
      result = receive_message(LoginZ_result)
      return result.success unless result.success.nil?
      raise result.e unless result.e.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'loginZ failed: unknown result')
    end

    def issueTokenForAccountMigrationSettings(enforce)
      send_issueTokenForAccountMigrationSettings(enforce)
      return recv_issueTokenForAccountMigrationSettings()
    end

    def send_issueTokenForAccountMigrationSettings(enforce)
      send_message('issueTokenForAccountMigrationSettings', IssueTokenForAccountMigrationSettings_args, :enforce => enforce)
    end

    def recv_issueTokenForAccountMigrationSettings()
      result = receive_message(IssueTokenForAccountMigrationSettings_result)
      return result.success unless result.success.nil?
      raise result.e unless result.e.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'issueTokenForAccountMigrationSettings failed: unknown result')
    end

    def issueTokenForAccountMigration(migrationSessionId)
      send_issueTokenForAccountMigration(migrationSessionId)
      return recv_issueTokenForAccountMigration()
    end

    def send_issueTokenForAccountMigration(migrationSessionId)
      send_message('issueTokenForAccountMigration', IssueTokenForAccountMigration_args, :migrationSessionId => migrationSessionId)
    end

    def recv_issueTokenForAccountMigration()
      result = receive_message(IssueTokenForAccountMigration_result)
      return result.success unless result.success.nil?
      raise result.e unless result.e.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'issueTokenForAccountMigration failed: unknown result')
    end

    def verifyQrcodeWithE2EE(verifier, pinCode, errorCode, publicKey, encryptedKeyChain, hashKeyChain)
      send_verifyQrcodeWithE2EE(verifier, pinCode, errorCode, publicKey, encryptedKeyChain, hashKeyChain)
      return recv_verifyQrcodeWithE2EE()
    end

    def send_verifyQrcodeWithE2EE(verifier, pinCode, errorCode, publicKey, encryptedKeyChain, hashKeyChain)
      send_message('verifyQrcodeWithE2EE', VerifyQrcodeWithE2EE_args, :verifier => verifier, :pinCode => pinCode, :errorCode => errorCode, :publicKey => publicKey, :encryptedKeyChain => encryptedKeyChain, :hashKeyChain => hashKeyChain)
    end

    def recv_verifyQrcodeWithE2EE()
      result = receive_message(VerifyQrcodeWithE2EE_result)
      return result.success unless result.success.nil?
      raise result.e unless result.e.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'verifyQrcodeWithE2EE failed: unknown result')
    end

  end

  class Processor
    include ::Thrift::Processor

    def process_updatePassword(seqid, iprot, oprot)
      args = read_args(iprot, UpdatePassword_args)
      result = UpdatePassword_result.new()
      begin
        result.success = @handler.updatePassword(args.authSessionId, args.request)
      rescue ::TalkException => e
        result.e = e
      end
      write_result(result, oprot, 'updatePassword', seqid)
    end

    def process_getAuthRSAKey(seqid, iprot, oprot)
      args = read_args(iprot, GetAuthRSAKey_args)
      result = GetAuthRSAKey_result.new()
      begin
        result.success = @handler.getAuthRSAKey(args.authSessionId, args.identityProvider)
      rescue ::TalkException => e
        result.e = e
      end
      write_result(result, oprot, 'getAuthRSAKey', seqid)
    end

    def process_openAuthSession(seqid, iprot, oprot)
      args = read_args(iprot, OpenAuthSession_args)
      result = OpenAuthSession_result.new()
      begin
        result.success = @handler.openAuthSession(args.request)
      rescue ::TalkException => e
        result.e = e
      end
      write_result(result, oprot, 'openAuthSession', seqid)
    end

    def process_normalizePhoneNumber(seqid, iprot, oprot)
      args = read_args(iprot, NormalizePhoneNumber_args)
      result = NormalizePhoneNumber_result.new()
      begin
        result.success = @handler.normalizePhoneNumber(args.countryCode, args.phoneNumber, args.countryCodeHint)
      rescue ::TalkException => e
        result.e = e
      end
      write_result(result, oprot, 'normalizePhoneNumber', seqid)
    end

    def process_respondE2EELoginRequest(seqid, iprot, oprot)
      args = read_args(iprot, RespondE2EELoginRequest_args)
      result = RespondE2EELoginRequest_result.new()
      begin
        @handler.respondE2EELoginRequest(args.verifier, args.publicKey, args.encryptedKeyChain, args.hashKeyChain, args.errorCode)
      rescue ::TalkException => e
        result.e = e
      end
      write_result(result, oprot, 'respondE2EELoginRequest', seqid)
    end

    def process_confirmE2EELogin(seqid, iprot, oprot)
      args = read_args(iprot, ConfirmE2EELogin_args)
      result = ConfirmE2EELogin_result.new()
      begin
        result.success = @handler.confirmE2EELogin(args.verifier, args.deviceSecret)
      rescue ::TalkException => e
        result.e = e
      end
      write_result(result, oprot, 'confirmE2EELogin', seqid)
    end

    def process_logoutZ(seqid, iprot, oprot)
      args = read_args(iprot, LogoutZ_args)
      result = LogoutZ_result.new()
      begin
        @handler.logoutZ()
      rescue ::TalkException => e
        result.e = e
      end
      write_result(result, oprot, 'logoutZ', seqid)
    end

    def process_loginZ(seqid, iprot, oprot)
      args = read_args(iprot, LoginZ_args)
      result = LoginZ_result.new()
      begin
        result.success = @handler.loginZ(args.loginRequest)
      rescue ::TalkException => e
        result.e = e
      end
      write_result(result, oprot, 'loginZ', seqid)
    end

    def process_issueTokenForAccountMigrationSettings(seqid, iprot, oprot)
      args = read_args(iprot, IssueTokenForAccountMigrationSettings_args)
      result = IssueTokenForAccountMigrationSettings_result.new()
      begin
        result.success = @handler.issueTokenForAccountMigrationSettings(args.enforce)
      rescue ::TalkException => e
        result.e = e
      end
      write_result(result, oprot, 'issueTokenForAccountMigrationSettings', seqid)
    end

    def process_issueTokenForAccountMigration(seqid, iprot, oprot)
      args = read_args(iprot, IssueTokenForAccountMigration_args)
      result = IssueTokenForAccountMigration_result.new()
      begin
        result.success = @handler.issueTokenForAccountMigration(args.migrationSessionId)
      rescue ::TalkException => e
        result.e = e
      end
      write_result(result, oprot, 'issueTokenForAccountMigration', seqid)
    end

    def process_verifyQrcodeWithE2EE(seqid, iprot, oprot)
      args = read_args(iprot, VerifyQrcodeWithE2EE_args)
      result = VerifyQrcodeWithE2EE_result.new()
      begin
        result.success = @handler.verifyQrcodeWithE2EE(args.verifier, args.pinCode, args.errorCode, args.publicKey, args.encryptedKeyChain, args.hashKeyChain)
      rescue ::TalkException => e
        result.e = e
      end
      write_result(result, oprot, 'verifyQrcodeWithE2EE', seqid)
    end

  end

  # HELPER FUNCTIONS AND STRUCTURES

  class UpdatePassword_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    AUTHSESSIONID = 2
    REQUEST = 3

    FIELDS = {
      AUTHSESSIONID => {:type => ::Thrift::Types::STRING, :name => 'authSessionId'},
      REQUEST => {:type => ::Thrift::Types::STRUCT, :name => 'request', :class => ::IdentityCredentialRequest}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class UpdatePassword_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0
    E = 1

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => ::IdentityCredentialResponse},
      E => {:type => ::Thrift::Types::STRUCT, :name => 'e', :class => ::TalkException}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class GetAuthRSAKey_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    AUTHSESSIONID = 2
    IDENTITYPROVIDER = 3

    FIELDS = {
      AUTHSESSIONID => {:type => ::Thrift::Types::STRING, :name => 'authSessionId'},
      IDENTITYPROVIDER => {:type => ::Thrift::Types::I32, :name => 'identityProvider', :enum_class => ::IdentityProvider}
    }

    def struct_fields; FIELDS; end

    def validate
      unless @identityProvider.nil? || ::IdentityProvider::VALID_VALUES.include?(@identityProvider)
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field identityProvider!')
      end
    end

    ::Thrift::Struct.generate_accessors self
  end

  class GetAuthRSAKey_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0
    E = 1

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => ::RSAKey},
      E => {:type => ::Thrift::Types::STRUCT, :name => 'e', :class => ::TalkException}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class OpenAuthSession_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    REQUEST = 2

    FIELDS = {
      REQUEST => {:type => ::Thrift::Types::STRUCT, :name => 'request', :class => ::AuthSessionRequest}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class OpenAuthSession_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0
    E = 1

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::STRING, :name => 'success'},
      E => {:type => ::Thrift::Types::STRUCT, :name => 'e', :class => ::TalkException}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class NormalizePhoneNumber_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    COUNTRYCODE = 2
    PHONENUMBER = 3
    COUNTRYCODEHINT = 4

    FIELDS = {
      COUNTRYCODE => {:type => ::Thrift::Types::STRING, :name => 'countryCode'},
      PHONENUMBER => {:type => ::Thrift::Types::STRING, :name => 'phoneNumber'},
      COUNTRYCODEHINT => {:type => ::Thrift::Types::STRING, :name => 'countryCodeHint'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class NormalizePhoneNumber_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0
    E = 1

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::STRING, :name => 'success'},
      E => {:type => ::Thrift::Types::STRUCT, :name => 'e', :class => ::TalkException}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class RespondE2EELoginRequest_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    VERIFIER = 1
    PUBLICKEY = 2
    ENCRYPTEDKEYCHAIN = 3
    HASHKEYCHAIN = 4
    ERRORCODE = 5

    FIELDS = {
      VERIFIER => {:type => ::Thrift::Types::STRING, :name => 'verifier'},
      PUBLICKEY => {:type => ::Thrift::Types::STRUCT, :name => 'publicKey', :class => ::E2EEPublicKey},
      ENCRYPTEDKEYCHAIN => {:type => ::Thrift::Types::STRING, :name => 'encryptedKeyChain', :binary => true},
      HASHKEYCHAIN => {:type => ::Thrift::Types::STRING, :name => 'hashKeyChain', :binary => true},
      ERRORCODE => {:type => ::Thrift::Types::I32, :name => 'errorCode', :enum_class => ::ErrorCode}
    }

    def struct_fields; FIELDS; end

    def validate
      unless @errorCode.nil? || ::ErrorCode::VALID_VALUES.include?(@errorCode)
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field errorCode!')
      end
    end

    ::Thrift::Struct.generate_accessors self
  end

  class RespondE2EELoginRequest_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    E = 1

    FIELDS = {
      E => {:type => ::Thrift::Types::STRUCT, :name => 'e', :class => ::TalkException}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class ConfirmE2EELogin_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    VERIFIER = 1
    DEVICESECRET = 2

    FIELDS = {
      VERIFIER => {:type => ::Thrift::Types::STRING, :name => 'verifier'},
      DEVICESECRET => {:type => ::Thrift::Types::STRING, :name => 'deviceSecret', :binary => true}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class ConfirmE2EELogin_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0
    E = 1

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::STRING, :name => 'success'},
      E => {:type => ::Thrift::Types::STRUCT, :name => 'e', :class => ::TalkException}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class LogoutZ_args
    include ::Thrift::Struct, ::Thrift::Struct_Union

    FIELDS = {

    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class LogoutZ_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    E = 1

    FIELDS = {
      E => {:type => ::Thrift::Types::STRUCT, :name => 'e', :class => ::TalkException}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class LoginZ_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    LOGINREQUEST = 2

    FIELDS = {
      LOGINREQUEST => {:type => ::Thrift::Types::STRUCT, :name => 'loginRequest', :class => ::LoginRequest}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class LoginZ_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0
    E = 1

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => ::LoginResult},
      E => {:type => ::Thrift::Types::STRUCT, :name => 'e', :class => ::TalkException}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class IssueTokenForAccountMigrationSettings_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    ENFORCE = 2

    FIELDS = {
      ENFORCE => {:type => ::Thrift::Types::BOOL, :name => 'enforce'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class IssueTokenForAccountMigrationSettings_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0
    E = 1

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => ::SecurityCenterResult},
      E => {:type => ::Thrift::Types::STRUCT, :name => 'e', :class => ::TalkException}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class IssueTokenForAccountMigration_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    MIGRATIONSESSIONID = 2

    FIELDS = {
      MIGRATIONSESSIONID => {:type => ::Thrift::Types::STRING, :name => 'migrationSessionId'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class IssueTokenForAccountMigration_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0
    E = 1

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => ::SecurityCenterResult},
      E => {:type => ::Thrift::Types::STRUCT, :name => 'e', :class => ::TalkException}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class VerifyQrcodeWithE2EE_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    VERIFIER = 2
    PINCODE = 3
    ERRORCODE = 4
    PUBLICKEY = 5
    ENCRYPTEDKEYCHAIN = 6
    HASHKEYCHAIN = 7

    FIELDS = {
      VERIFIER => {:type => ::Thrift::Types::STRING, :name => 'verifier'},
      PINCODE => {:type => ::Thrift::Types::STRING, :name => 'pinCode'},
      ERRORCODE => {:type => ::Thrift::Types::I32, :name => 'errorCode', :enum_class => ::ErrorCode},
      PUBLICKEY => {:type => ::Thrift::Types::STRUCT, :name => 'publicKey', :class => ::E2EEPublicKey},
      ENCRYPTEDKEYCHAIN => {:type => ::Thrift::Types::STRING, :name => 'encryptedKeyChain', :binary => true},
      HASHKEYCHAIN => {:type => ::Thrift::Types::STRING, :name => 'hashKeyChain', :binary => true}
    }

    def struct_fields; FIELDS; end

    def validate
      unless @errorCode.nil? || ::ErrorCode::VALID_VALUES.include?(@errorCode)
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field errorCode!')
      end
    end

    ::Thrift::Struct.generate_accessors self
  end

  class VerifyQrcodeWithE2EE_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0
    E = 1

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::STRING, :name => 'success'},
      E => {:type => ::Thrift::Types::STRUCT, :name => 'e', :class => ::TalkException}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

end
