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

class JoinSquareRequest
{
    static public $isValidate = false;

    static public $_TSPEC = array(
        2 => array(
            'var' => 'squareMid',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
        3 => array(
            'var' => 'member',
            'isRequired' => false,
            'type' => TType::STRUCT,
            'class' => '\SquareMember',
        ),
    );

    /**
     * @var string
     */
    public $squareMid = null;
    /**
     * @var \SquareMember
     */
    public $member = null;

    public function __construct($vals = null)
    {
        if (is_array($vals)) {
            if (isset($vals['squareMid'])) {
                $this->squareMid = $vals['squareMid'];
            }
            if (isset($vals['member'])) {
                $this->member = $vals['member'];
            }
        }
    }

    public function getName()
    {
        return 'JoinSquareRequest';
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
                        $xfer += $input->readString($this->squareMid);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 3:
                    if ($ftype == TType::STRUCT) {
                        $this->member = new \SquareMember();
                        $xfer += $this->member->read($input);
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
        $xfer += $output->writeStructBegin('JoinSquareRequest');
        if ($this->squareMid !== null) {
            $xfer += $output->writeFieldBegin('squareMid', TType::STRING, 2);
            $xfer += $output->writeString($this->squareMid);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->member !== null) {
            if (!is_object($this->member)) {
                throw new TProtocolException('Bad type in structure.', TProtocolException::INVALID_DATA);
            }
            $xfer += $output->writeFieldBegin('member', TType::STRUCT, 3);
            $xfer += $this->member->write($output);
            $xfer += $output->writeFieldEnd();
        }
        $xfer += $output->writeFieldStop();
        $xfer += $output->writeStructEnd();
        return $xfer;
    }
}