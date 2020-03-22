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

class Room
{
    static public $isValidate = false;

    static public $_TSPEC = array(
        1 => array(
            'var' => 'mid',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
        2 => array(
            'var' => 'createdTime',
            'isRequired' => false,
            'type' => TType::I64,
        ),
        10 => array(
            'var' => 'contacts',
            'isRequired' => false,
            'type' => TType::LST,
            'etype' => TType::STRUCT,
            'elem' => array(
                'type' => TType::STRUCT,
                'class' => '\Contact',
                ),
        ),
        31 => array(
            'var' => 'notificationDisabled',
            'isRequired' => false,
            'type' => TType::BOOL,
        ),
        40 => array(
            'var' => 'memberMids',
            'isRequired' => false,
            'type' => TType::LST,
            'etype' => TType::STRING,
            'elem' => array(
                'type' => TType::STRING,
                ),
        ),
    );

    /**
     * @var string
     */
    public $mid = null;
    /**
     * @var int
     */
    public $createdTime = null;
    /**
     * @var \Contact[]
     */
    public $contacts = null;
    /**
     * @var bool
     */
    public $notificationDisabled = null;
    /**
     * @var string[]
     */
    public $memberMids = null;

    public function __construct($vals = null)
    {
        if (is_array($vals)) {
            if (isset($vals['mid'])) {
                $this->mid = $vals['mid'];
            }
            if (isset($vals['createdTime'])) {
                $this->createdTime = $vals['createdTime'];
            }
            if (isset($vals['contacts'])) {
                $this->contacts = $vals['contacts'];
            }
            if (isset($vals['notificationDisabled'])) {
                $this->notificationDisabled = $vals['notificationDisabled'];
            }
            if (isset($vals['memberMids'])) {
                $this->memberMids = $vals['memberMids'];
            }
        }
    }

    public function getName()
    {
        return 'Room';
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
                        $xfer += $input->readString($this->mid);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 2:
                    if ($ftype == TType::I64) {
                        $xfer += $input->readI64($this->createdTime);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 10:
                    if ($ftype == TType::LST) {
                        $this->contacts = array();
                        $_size385 = 0;
                        $_etype388 = 0;
                        $xfer += $input->readListBegin($_etype388, $_size385);
                        for ($_i389 = 0; $_i389 < $_size385; ++$_i389) {
                            $elem390 = null;
                            $elem390 = new \Contact();
                            $xfer += $elem390->read($input);
                            $this->contacts []= $elem390;
                        }
                        $xfer += $input->readListEnd();
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 31:
                    if ($ftype == TType::BOOL) {
                        $xfer += $input->readBool($this->notificationDisabled);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 40:
                    if ($ftype == TType::LST) {
                        $this->memberMids = array();
                        $_size391 = 0;
                        $_etype394 = 0;
                        $xfer += $input->readListBegin($_etype394, $_size391);
                        for ($_i395 = 0; $_i395 < $_size391; ++$_i395) {
                            $elem396 = null;
                            $xfer += $input->readString($elem396);
                            $this->memberMids []= $elem396;
                        }
                        $xfer += $input->readListEnd();
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
        $xfer += $output->writeStructBegin('Room');
        if ($this->mid !== null) {
            $xfer += $output->writeFieldBegin('mid', TType::STRING, 1);
            $xfer += $output->writeString($this->mid);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->createdTime !== null) {
            $xfer += $output->writeFieldBegin('createdTime', TType::I64, 2);
            $xfer += $output->writeI64($this->createdTime);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->contacts !== null) {
            if (!is_array($this->contacts)) {
                throw new TProtocolException('Bad type in structure.', TProtocolException::INVALID_DATA);
            }
            $xfer += $output->writeFieldBegin('contacts', TType::LST, 10);
            $output->writeListBegin(TType::STRUCT, count($this->contacts));
            foreach ($this->contacts as $iter397) {
                $xfer += $iter397->write($output);
            }
            $output->writeListEnd();
            $xfer += $output->writeFieldEnd();
        }
        if ($this->notificationDisabled !== null) {
            $xfer += $output->writeFieldBegin('notificationDisabled', TType::BOOL, 31);
            $xfer += $output->writeBool($this->notificationDisabled);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->memberMids !== null) {
            if (!is_array($this->memberMids)) {
                throw new TProtocolException('Bad type in structure.', TProtocolException::INVALID_DATA);
            }
            $xfer += $output->writeFieldBegin('memberMids', TType::LST, 40);
            $output->writeListBegin(TType::STRING, count($this->memberMids));
            foreach ($this->memberMids as $iter398) {
                $xfer += $output->writeString($iter398);
            }
            $output->writeListEnd();
            $xfer += $output->writeFieldEnd();
        }
        $xfer += $output->writeFieldStop();
        $xfer += $output->writeStructEnd();
        return $xfer;
    }
}