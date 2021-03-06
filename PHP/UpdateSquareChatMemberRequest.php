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

class UpdateSquareChatMemberRequest
{
    static public $isValidate = false;

    static public $_TSPEC = array(
        2 => array(
            'var' => 'updatedAttrs',
            'isRequired' => false,
            'type' => TType::SET,
            'etype' => TType::I32,
            'elem' => array(
                'type' => TType::I32,
                ),
        ),
        3 => array(
            'var' => 'chatMember',
            'isRequired' => false,
            'type' => TType::STRUCT,
            'class' => '\SquareChatMember',
        ),
    );

    /**
     * @var int[]
     */
    public $updatedAttrs = null;
    /**
     * @var \SquareChatMember
     */
    public $chatMember = null;

    public function __construct($vals = null)
    {
        if (is_array($vals)) {
            if (isset($vals['updatedAttrs'])) {
                $this->updatedAttrs = $vals['updatedAttrs'];
            }
            if (isset($vals['chatMember'])) {
                $this->chatMember = $vals['chatMember'];
            }
        }
    }

    public function getName()
    {
        return 'UpdateSquareChatMemberRequest';
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
                    if ($ftype == TType::SET) {
                        $this->updatedAttrs = array();
                        $_size861 = 0;
                        $_etype864 = 0;
                        $xfer += $input->readSetBegin($_etype864, $_size861);
                        for ($_i865 = 0; $_i865 < $_size861; ++$_i865) {
                            $elem866 = null;
                            $xfer += $input->readI32($elem866);
                            $this->updatedAttrs[$elem866] = true;
                        }
                        $xfer += $input->readSetEnd();
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 3:
                    if ($ftype == TType::STRUCT) {
                        $this->chatMember = new \SquareChatMember();
                        $xfer += $this->chatMember->read($input);
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
        $xfer += $output->writeStructBegin('UpdateSquareChatMemberRequest');
        if ($this->updatedAttrs !== null) {
            if (!is_array($this->updatedAttrs)) {
                throw new TProtocolException('Bad type in structure.', TProtocolException::INVALID_DATA);
            }
            $xfer += $output->writeFieldBegin('updatedAttrs', TType::SET, 2);
            $output->writeSetBegin(TType::I32, count($this->updatedAttrs));
            foreach ($this->updatedAttrs as $iter867 => $iter868) {
                $xfer += $output->writeI32($iter867);
            }
            $output->writeSetEnd();
            $xfer += $output->writeFieldEnd();
        }
        if ($this->chatMember !== null) {
            if (!is_object($this->chatMember)) {
                throw new TProtocolException('Bad type in structure.', TProtocolException::INVALID_DATA);
            }
            $xfer += $output->writeFieldBegin('chatMember', TType::STRUCT, 3);
            $xfer += $this->chatMember->write($output);
            $xfer += $output->writeFieldEnd();
        }
        $xfer += $output->writeFieldStop();
        $xfer += $output->writeStructEnd();
        return $xfer;
    }
}
