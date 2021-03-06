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

class TalkService_getE2EEPublicKey_args
{
    static public $isValidate = false;

    static public $_TSPEC = array(
        2 => array(
            'var' => 'mid',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
        3 => array(
            'var' => 'version',
            'isRequired' => false,
            'type' => TType::I32,
        ),
        4 => array(
            'var' => 'keyId',
            'isRequired' => false,
            'type' => TType::I32,
        ),
    );

    /**
     * @var string
     */
    public $mid = null;
    /**
     * @var int
     */
    public $version = null;
    /**
     * @var int
     */
    public $keyId = null;

    public function __construct($vals = null)
    {
        if (is_array($vals)) {
            if (isset($vals['mid'])) {
                $this->mid = $vals['mid'];
            }
            if (isset($vals['version'])) {
                $this->version = $vals['version'];
            }
            if (isset($vals['keyId'])) {
                $this->keyId = $vals['keyId'];
            }
        }
    }

    public function getName()
    {
        return 'TalkService_getE2EEPublicKey_args';
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
                case 2:
                    if ($ftype == TType::STRING) {
                        $xfer += $input->readString($this->mid);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 3:
                    if ($ftype == TType::I32) {
                        $xfer += $input->readI32($this->version);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 4:
                    if ($ftype == TType::I32) {
                        $xfer += $input->readI32($this->keyId);
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
        $xfer += $output->writeStructBegin('TalkService_getE2EEPublicKey_args');
        if ($this->mid !== null) {
            $xfer += $output->writeFieldBegin('mid', TType::STRING, 2);
            $xfer += $output->writeString($this->mid);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->version !== null) {
            $xfer += $output->writeFieldBegin('version', TType::I32, 3);
            $xfer += $output->writeI32($this->version);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->keyId !== null) {
            $xfer += $output->writeFieldBegin('keyId', TType::I32, 4);
            $xfer += $output->writeI32($this->keyId);
            $xfer += $output->writeFieldEnd();
        }
        $xfer += $output->writeFieldStop();
        $xfer += $output->writeStructEnd();
        return $xfer;
    }
}
