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

class BotUseInfo
{
    static public $isValidate = false;

    static public $_TSPEC = array(
        1 => array(
            'var' => 'botUseAgreementAccepted',
            'isRequired' => false,
            'type' => TType::BOOL,
        ),
        2 => array(
            'var' => 'botInFriends',
            'isRequired' => false,
            'type' => TType::BOOL,
        ),
        3 => array(
            'var' => 'primaryApplication',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
        4 => array(
            'var' => 'locale',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
    );

    /**
     * @var bool
     */
    public $botUseAgreementAccepted = null;
    /**
     * @var bool
     */
    public $botInFriends = null;
    /**
     * @var string
     */
    public $primaryApplication = null;
    /**
     * @var string
     */
    public $locale = null;

    public function __construct($vals = null)
    {
        if (is_array($vals)) {
            if (isset($vals['botUseAgreementAccepted'])) {
                $this->botUseAgreementAccepted = $vals['botUseAgreementAccepted'];
            }
            if (isset($vals['botInFriends'])) {
                $this->botInFriends = $vals['botInFriends'];
            }
            if (isset($vals['primaryApplication'])) {
                $this->primaryApplication = $vals['primaryApplication'];
            }
            if (isset($vals['locale'])) {
                $this->locale = $vals['locale'];
            }
        }
    }

    public function getName()
    {
        return 'BotUseInfo';
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
                    if ($ftype == TType::BOOL) {
                        $xfer += $input->readBool($this->botUseAgreementAccepted);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 2:
                    if ($ftype == TType::BOOL) {
                        $xfer += $input->readBool($this->botInFriends);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 3:
                    if ($ftype == TType::STRING) {
                        $xfer += $input->readString($this->primaryApplication);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 4:
                    if ($ftype == TType::STRING) {
                        $xfer += $input->readString($this->locale);
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
        $xfer += $output->writeStructBegin('BotUseInfo');
        if ($this->botUseAgreementAccepted !== null) {
            $xfer += $output->writeFieldBegin('botUseAgreementAccepted', TType::BOOL, 1);
            $xfer += $output->writeBool($this->botUseAgreementAccepted);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->botInFriends !== null) {
            $xfer += $output->writeFieldBegin('botInFriends', TType::BOOL, 2);
            $xfer += $output->writeBool($this->botInFriends);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->primaryApplication !== null) {
            $xfer += $output->writeFieldBegin('primaryApplication', TType::STRING, 3);
            $xfer += $output->writeString($this->primaryApplication);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->locale !== null) {
            $xfer += $output->writeFieldBegin('locale', TType::STRING, 4);
            $xfer += $output->writeString($this->locale);
            $xfer += $output->writeFieldEnd();
        }
        $xfer += $output->writeFieldStop();
        $xfer += $output->writeStructEnd();
        return $xfer;
    }
}
