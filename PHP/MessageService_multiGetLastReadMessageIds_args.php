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

class MessageService_multiGetLastReadMessageIds_args
{
    static public $isValidate = false;

    static public $_TSPEC = array(
        2 => array(
            'var' => 'chatIds',
            'isRequired' => false,
            'type' => TType::LST,
            'etype' => TType::STRING,
            'elem' => array(
                'type' => TType::STRING,
                ),
        ),
    );

    /**
     * @var string[]
     */
    public $chatIds = null;

    public function __construct($vals = null)
    {
        if (is_array($vals)) {
            if (isset($vals['chatIds'])) {
                $this->chatIds = $vals['chatIds'];
            }
        }
    }

    public function getName()
    {
        return 'MessageService_multiGetLastReadMessageIds_args';
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
                    if ($ftype == TType::LST) {
                        $this->chatIds = array();
                        $_size1328 = 0;
                        $_etype1331 = 0;
                        $xfer += $input->readListBegin($_etype1331, $_size1328);
                        for ($_i1332 = 0; $_i1332 < $_size1328; ++$_i1332) {
                            $elem1333 = null;
                            $xfer += $input->readString($elem1333);
                            $this->chatIds []= $elem1333;
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
        $xfer += $output->writeStructBegin('MessageService_multiGetLastReadMessageIds_args');
        if ($this->chatIds !== null) {
            if (!is_array($this->chatIds)) {
                throw new TProtocolException('Bad type in structure.', TProtocolException::INVALID_DATA);
            }
            $xfer += $output->writeFieldBegin('chatIds', TType::LST, 2);
            $output->writeListBegin(TType::STRING, count($this->chatIds));
            foreach ($this->chatIds as $iter1334) {
                $xfer += $output->writeString($iter1334);
            }
            $output->writeListEnd();
            $xfer += $output->writeFieldEnd();
        }
        $xfer += $output->writeFieldStop();
        $xfer += $output->writeStructEnd();
        return $xfer;
    }
}
