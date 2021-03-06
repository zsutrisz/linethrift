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

class FriendRequestsInfo
{
    static public $isValidate = false;

    static public $_TSPEC = array(
        1 => array(
            'var' => 'totalIncomingCount',
            'isRequired' => false,
            'type' => TType::I32,
        ),
        2 => array(
            'var' => 'totalOutgoingCount',
            'isRequired' => false,
            'type' => TType::I32,
        ),
        3 => array(
            'var' => 'recentIncomings',
            'isRequired' => false,
            'type' => TType::LST,
            'etype' => TType::STRUCT,
            'elem' => array(
                'type' => TType::STRUCT,
                'class' => '\FriendRequest',
                ),
        ),
        4 => array(
            'var' => 'recentOutgoings',
            'isRequired' => false,
            'type' => TType::LST,
            'etype' => TType::STRUCT,
            'elem' => array(
                'type' => TType::STRUCT,
                'class' => '\FriendRequest',
                ),
        ),
        5 => array(
            'var' => 'totalIncomingLimit',
            'isRequired' => false,
            'type' => TType::I32,
        ),
        6 => array(
            'var' => 'totalOutgoingLimit',
            'isRequired' => false,
            'type' => TType::I32,
        ),
    );

    /**
     * @var int
     */
    public $totalIncomingCount = null;
    /**
     * @var int
     */
    public $totalOutgoingCount = null;
    /**
     * @var \FriendRequest[]
     */
    public $recentIncomings = null;
    /**
     * @var \FriendRequest[]
     */
    public $recentOutgoings = null;
    /**
     * @var int
     */
    public $totalIncomingLimit = null;
    /**
     * @var int
     */
    public $totalOutgoingLimit = null;

    public function __construct($vals = null)
    {
        if (is_array($vals)) {
            if (isset($vals['totalIncomingCount'])) {
                $this->totalIncomingCount = $vals['totalIncomingCount'];
            }
            if (isset($vals['totalOutgoingCount'])) {
                $this->totalOutgoingCount = $vals['totalOutgoingCount'];
            }
            if (isset($vals['recentIncomings'])) {
                $this->recentIncomings = $vals['recentIncomings'];
            }
            if (isset($vals['recentOutgoings'])) {
                $this->recentOutgoings = $vals['recentOutgoings'];
            }
            if (isset($vals['totalIncomingLimit'])) {
                $this->totalIncomingLimit = $vals['totalIncomingLimit'];
            }
            if (isset($vals['totalOutgoingLimit'])) {
                $this->totalOutgoingLimit = $vals['totalOutgoingLimit'];
            }
        }
    }

    public function getName()
    {
        return 'FriendRequestsInfo';
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
                    if ($ftype == TType::I32) {
                        $xfer += $input->readI32($this->totalIncomingCount);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 2:
                    if ($ftype == TType::I32) {
                        $xfer += $input->readI32($this->totalOutgoingCount);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 3:
                    if ($ftype == TType::LST) {
                        $this->recentIncomings = array();
                        $_size230 = 0;
                        $_etype233 = 0;
                        $xfer += $input->readListBegin($_etype233, $_size230);
                        for ($_i234 = 0; $_i234 < $_size230; ++$_i234) {
                            $elem235 = null;
                            $elem235 = new \FriendRequest();
                            $xfer += $elem235->read($input);
                            $this->recentIncomings []= $elem235;
                        }
                        $xfer += $input->readListEnd();
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 4:
                    if ($ftype == TType::LST) {
                        $this->recentOutgoings = array();
                        $_size236 = 0;
                        $_etype239 = 0;
                        $xfer += $input->readListBegin($_etype239, $_size236);
                        for ($_i240 = 0; $_i240 < $_size236; ++$_i240) {
                            $elem241 = null;
                            $elem241 = new \FriendRequest();
                            $xfer += $elem241->read($input);
                            $this->recentOutgoings []= $elem241;
                        }
                        $xfer += $input->readListEnd();
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 5:
                    if ($ftype == TType::I32) {
                        $xfer += $input->readI32($this->totalIncomingLimit);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 6:
                    if ($ftype == TType::I32) {
                        $xfer += $input->readI32($this->totalOutgoingLimit);
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
        $xfer += $output->writeStructBegin('FriendRequestsInfo');
        if ($this->totalIncomingCount !== null) {
            $xfer += $output->writeFieldBegin('totalIncomingCount', TType::I32, 1);
            $xfer += $output->writeI32($this->totalIncomingCount);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->totalOutgoingCount !== null) {
            $xfer += $output->writeFieldBegin('totalOutgoingCount', TType::I32, 2);
            $xfer += $output->writeI32($this->totalOutgoingCount);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->recentIncomings !== null) {
            if (!is_array($this->recentIncomings)) {
                throw new TProtocolException('Bad type in structure.', TProtocolException::INVALID_DATA);
            }
            $xfer += $output->writeFieldBegin('recentIncomings', TType::LST, 3);
            $output->writeListBegin(TType::STRUCT, count($this->recentIncomings));
            foreach ($this->recentIncomings as $iter242) {
                $xfer += $iter242->write($output);
            }
            $output->writeListEnd();
            $xfer += $output->writeFieldEnd();
        }
        if ($this->recentOutgoings !== null) {
            if (!is_array($this->recentOutgoings)) {
                throw new TProtocolException('Bad type in structure.', TProtocolException::INVALID_DATA);
            }
            $xfer += $output->writeFieldBegin('recentOutgoings', TType::LST, 4);
            $output->writeListBegin(TType::STRUCT, count($this->recentOutgoings));
            foreach ($this->recentOutgoings as $iter243) {
                $xfer += $iter243->write($output);
            }
            $output->writeListEnd();
            $xfer += $output->writeFieldEnd();
        }
        if ($this->totalIncomingLimit !== null) {
            $xfer += $output->writeFieldBegin('totalIncomingLimit', TType::I32, 5);
            $xfer += $output->writeI32($this->totalIncomingLimit);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->totalOutgoingLimit !== null) {
            $xfer += $output->writeFieldBegin('totalOutgoingLimit', TType::I32, 6);
            $xfer += $output->writeI32($this->totalOutgoingLimit);
            $xfer += $output->writeFieldEnd();
        }
        $xfer += $output->writeFieldStop();
        $xfer += $output->writeStructEnd();
        return $xfer;
    }
}
