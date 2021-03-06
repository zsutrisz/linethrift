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

class ChannelApplicationProvidedService_getGroupsForChannel_args
{
    static public $isValidate = false;

    static public $_TSPEC = array(
        1 => array(
            'var' => 'groupIds',
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
    public $groupIds = null;

    public function __construct($vals = null)
    {
        if (is_array($vals)) {
            if (isset($vals['groupIds'])) {
                $this->groupIds = $vals['groupIds'];
            }
        }
    }

    public function getName()
    {
        return 'ChannelApplicationProvidedService_getGroupsForChannel_args';
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
                    if ($ftype == TType::LST) {
                        $this->groupIds = array();
                        $_size1235 = 0;
                        $_etype1238 = 0;
                        $xfer += $input->readListBegin($_etype1238, $_size1235);
                        for ($_i1239 = 0; $_i1239 < $_size1235; ++$_i1239) {
                            $elem1240 = null;
                            $xfer += $input->readString($elem1240);
                            $this->groupIds []= $elem1240;
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
        $xfer += $output->writeStructBegin('ChannelApplicationProvidedService_getGroupsForChannel_args');
        if ($this->groupIds !== null) {
            if (!is_array($this->groupIds)) {
                throw new TProtocolException('Bad type in structure.', TProtocolException::INVALID_DATA);
            }
            $xfer += $output->writeFieldBegin('groupIds', TType::LST, 1);
            $output->writeListBegin(TType::STRING, count($this->groupIds));
            foreach ($this->groupIds as $iter1241) {
                $xfer += $output->writeString($iter1241);
            }
            $output->writeListEnd();
            $xfer += $output->writeFieldEnd();
        }
        $xfer += $output->writeFieldStop();
        $xfer += $output->writeStructEnd();
        return $xfer;
    }
}
