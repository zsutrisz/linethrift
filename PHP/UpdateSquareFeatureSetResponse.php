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

class UpdateSquareFeatureSetResponse
{
    static public $isValidate = false;

    static public $_TSPEC = array(
        1 => array(
            'var' => 'updateAttributes',
            'isRequired' => false,
            'type' => TType::SET,
            'etype' => TType::I32,
            'elem' => array(
                'type' => TType::I32,
                ),
        ),
        2 => array(
            'var' => 'squareFeatureSet',
            'isRequired' => false,
            'type' => TType::STRUCT,
            'class' => '\SquareFeatureSet',
        ),
    );

    /**
     * @var int[]
     */
    public $updateAttributes = null;
    /**
     * @var \SquareFeatureSet
     */
    public $squareFeatureSet = null;

    public function __construct($vals = null)
    {
        if (is_array($vals)) {
            if (isset($vals['updateAttributes'])) {
                $this->updateAttributes = $vals['updateAttributes'];
            }
            if (isset($vals['squareFeatureSet'])) {
                $this->squareFeatureSet = $vals['squareFeatureSet'];
            }
        }
    }

    public function getName()
    {
        return 'UpdateSquareFeatureSetResponse';
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
                    if ($ftype == TType::SET) {
                        $this->updateAttributes = array();
                        $_size736 = 0;
                        $_etype739 = 0;
                        $xfer += $input->readSetBegin($_etype739, $_size736);
                        for ($_i740 = 0; $_i740 < $_size736; ++$_i740) {
                            $elem741 = null;
                            $xfer += $input->readI32($elem741);
                            $this->updateAttributes[$elem741] = true;
                        }
                        $xfer += $input->readSetEnd();
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 2:
                    if ($ftype == TType::STRUCT) {
                        $this->squareFeatureSet = new \SquareFeatureSet();
                        $xfer += $this->squareFeatureSet->read($input);
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
        $xfer += $output->writeStructBegin('UpdateSquareFeatureSetResponse');
        if ($this->updateAttributes !== null) {
            if (!is_array($this->updateAttributes)) {
                throw new TProtocolException('Bad type in structure.', TProtocolException::INVALID_DATA);
            }
            $xfer += $output->writeFieldBegin('updateAttributes', TType::SET, 1);
            $output->writeSetBegin(TType::I32, count($this->updateAttributes));
            foreach ($this->updateAttributes as $iter742 => $iter743) {
                $xfer += $output->writeI32($iter742);
            }
            $output->writeSetEnd();
            $xfer += $output->writeFieldEnd();
        }
        if ($this->squareFeatureSet !== null) {
            if (!is_object($this->squareFeatureSet)) {
                throw new TProtocolException('Bad type in structure.', TProtocolException::INVALID_DATA);
            }
            $xfer += $output->writeFieldBegin('squareFeatureSet', TType::STRUCT, 2);
            $xfer += $this->squareFeatureSet->write($output);
            $xfer += $output->writeFieldEnd();
        }
        $xfer += $output->writeFieldStop();
        $xfer += $output->writeStructEnd();
        return $xfer;
    }
}
