<?php
/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
use Thrift\Base\TBase;
use Thrift\Type\TType;
use Thrift\Type\TMessageType;
use Thrift\Exception\TException;
use Thrift\Exception\TProtocolException;
use Thrift\Protocol\TProtocol;
use Thrift\Protocol\TBinaryProtocolAccelerated;
use Thrift\Exception\TApplicationException;

class AuthService_respondE2EELoginRequest_args
{
    static public $isValidate = false;

    static public $_TSPEC = array(
        1 => array(
            'var' => 'verifier',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
        2 => array(
            'var' => 'publicKey',
            'isRequired' => false,
            'type' => TType::STRUCT,
            'class' => '\E2EEPublicKey',
        ),
        3 => array(
            'var' => 'encryptedKeyChain',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
        4 => array(
            'var' => 'hashKeyChain',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
        5 => array(
            'var' => 'errorCode',
            'isRequired' => false,
            'type' => TType::I32,
        ),
    );

    /**
     * @var string
     */
    public $verifier = null;
    /**
     * @var \E2EEPublicKey
     */
    public $publicKey = null;
    /**
     * @var string
     */
    public $encryptedKeyChain = null;
    /**
     * @var string
     */
    public $hashKeyChain = null;
    /**
     * @var int
     */
    public $errorCode = null;

    public function __construct($vals = null)
    {
        if (is_array($vals)) {
            if (isset($vals['verifier'])) {
                $this->verifier = $vals['verifier'];
            }
            if (isset($vals['publicKey'])) {
                $this->publicKey = $vals['publicKey'];
            }
            if (isset($vals['encryptedKeyChain'])) {
                $this->encryptedKeyChain = $vals['encryptedKeyChain'];
            }
            if (isset($vals['hashKeyChain'])) {
                $this->hashKeyChain = $vals['hashKeyChain'];
            }
            if (isset($vals['errorCode'])) {
                $this->errorCode = $vals['errorCode'];
            }
        }
    }

    public function getName()
    {
        return 'AuthService_respondE2EELoginRequest_args';
    }


    public function read($input)
    {
        $xfer = 0;
        $fname = null;
        $ftype = 0;
        $fid = 0;
        $xfer += $input->readStructBegin($fname);
        while (true) {
            $xfer += $input->readFieldBegin($fname, $ftype, $fid);
            if ($ftype == TType::STOP) {
                break;
            }
            switch ($fid) {
                case 1:
                    if ($ftype == TType::STRING) {
                        $xfer += $input->readString($this->verifier);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 2:
                    if ($ftype == TType::STRUCT) {
                        $this->publicKey = new \E2EEPublicKey();
                        $xfer += $this->publicKey->read($input);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 3:
                    if ($ftype == TType::STRING) {
                        $xfer += $input->readString($this->encryptedKeyChain);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 4:
                    if ($ftype == TType::STRING) {
                        $xfer += $input->readString($this->hashKeyChain);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 5:
                    if ($ftype == TType::I32) {
                        $xfer += $input->readI32($this->errorCode);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                default:
                    $xfer += $input->skip($ftype);
                    break;
            }
            $xfer += $input->readFieldEnd();
        }
        $xfer += $input->readStructEnd();
        return $xfer;
    }

    public function write($output)
    {
        $xfer = 0;
        $xfer += $output->writeStructBegin('AuthService_respondE2EELoginRequest_args');
        if ($this->verifier !== null) {
            $xfer += $output->writeFieldBegin('verifier', TType::STRING, 1);
            $xfer += $output->writeString($this->verifier);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->publicKey !== null) {
            if (!is_object($this->publicKey)) {
                throw new TProtocolException('Bad type in structure.', TProtocolException::INVALID_DATA);
            }
            $xfer += $output->writeFieldBegin('publicKey', TType::STRUCT, 2);
            $xfer += $this->publicKey->write($output);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->encryptedKeyChain !== null) {
            $xfer += $output->writeFieldBegin('encryptedKeyChain', TType::STRING, 3);
            $xfer += $output->writeString($this->encryptedKeyChain);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->hashKeyChain !== null) {
            $xfer += $output->writeFieldBegin('hashKeyChain', TType::STRING, 4);
            $xfer += $output->writeString($this->hashKeyChain);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->errorCode !== null) {
            $xfer += $output->writeFieldBegin('errorCode', TType::I32, 5);
            $xfer += $output->writeI32($this->errorCode);
            $xfer += $output->writeFieldEnd();
        }
        $xfer += $output->writeFieldStop();
        $xfer += $output->writeStructEnd();
        return $xfer;
    }
}
