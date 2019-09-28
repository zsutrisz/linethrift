<?php
/**
 * Autogenerated by Thrift Compiler (0.13.0)
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

class CoinPurchaseReservation
{
    static public $isValidate = false;

    static public $_TSPEC = array(
        1 => array(
            'var' => 'productId',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
        2 => array(
            'var' => 'country',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
        3 => array(
            'var' => 'currency',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
        4 => array(
            'var' => 'price',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
        5 => array(
            'var' => 'appStoreCode',
            'isRequired' => false,
            'type' => TType::I32,
        ),
        6 => array(
            'var' => 'language',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
        7 => array(
            'var' => 'pgCode',
            'isRequired' => false,
            'type' => TType::I32,
        ),
        8 => array(
            'var' => 'redirectUrl',
            'isRequired' => false,
            'type' => TType::STRING,
        ),
    );

    /**
     * @var string
     */
    public $productId = null;
    /**
     * @var string
     */
    public $country = null;
    /**
     * @var string
     */
    public $currency = null;
    /**
     * @var string
     */
    public $price = null;
    /**
     * @var int
     */
    public $appStoreCode = null;
    /**
     * @var string
     */
    public $language = null;
    /**
     * @var int
     */
    public $pgCode = null;
    /**
     * @var string
     */
    public $redirectUrl = null;

    public function __construct($vals = null)
    {
        if (is_array($vals)) {
            if (isset($vals['productId'])) {
                $this->productId = $vals['productId'];
            }
            if (isset($vals['country'])) {
                $this->country = $vals['country'];
            }
            if (isset($vals['currency'])) {
                $this->currency = $vals['currency'];
            }
            if (isset($vals['price'])) {
                $this->price = $vals['price'];
            }
            if (isset($vals['appStoreCode'])) {
                $this->appStoreCode = $vals['appStoreCode'];
            }
            if (isset($vals['language'])) {
                $this->language = $vals['language'];
            }
            if (isset($vals['pgCode'])) {
                $this->pgCode = $vals['pgCode'];
            }
            if (isset($vals['redirectUrl'])) {
                $this->redirectUrl = $vals['redirectUrl'];
            }
        }
    }

    public function getName()
    {
        return 'CoinPurchaseReservation';
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
                        $xfer += $input->readString($this->productId);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 2:
                    if ($ftype == TType::STRING) {
                        $xfer += $input->readString($this->country);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 3:
                    if ($ftype == TType::STRING) {
                        $xfer += $input->readString($this->currency);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 4:
                    if ($ftype == TType::STRING) {
                        $xfer += $input->readString($this->price);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 5:
                    if ($ftype == TType::I32) {
                        $xfer += $input->readI32($this->appStoreCode);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 6:
                    if ($ftype == TType::STRING) {
                        $xfer += $input->readString($this->language);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 7:
                    if ($ftype == TType::I32) {
                        $xfer += $input->readI32($this->pgCode);
                    } else {
                        $xfer += $input->skip($ftype);
                    }
                    break;
                case 8:
                    if ($ftype == TType::STRING) {
                        $xfer += $input->readString($this->redirectUrl);
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
        $xfer += $output->writeStructBegin('CoinPurchaseReservation');
        if ($this->productId !== null) {
            $xfer += $output->writeFieldBegin('productId', TType::STRING, 1);
            $xfer += $output->writeString($this->productId);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->country !== null) {
            $xfer += $output->writeFieldBegin('country', TType::STRING, 2);
            $xfer += $output->writeString($this->country);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->currency !== null) {
            $xfer += $output->writeFieldBegin('currency', TType::STRING, 3);
            $xfer += $output->writeString($this->currency);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->price !== null) {
            $xfer += $output->writeFieldBegin('price', TType::STRING, 4);
            $xfer += $output->writeString($this->price);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->appStoreCode !== null) {
            $xfer += $output->writeFieldBegin('appStoreCode', TType::I32, 5);
            $xfer += $output->writeI32($this->appStoreCode);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->language !== null) {
            $xfer += $output->writeFieldBegin('language', TType::STRING, 6);
            $xfer += $output->writeString($this->language);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->pgCode !== null) {
            $xfer += $output->writeFieldBegin('pgCode', TType::I32, 7);
            $xfer += $output->writeI32($this->pgCode);
            $xfer += $output->writeFieldEnd();
        }
        if ($this->redirectUrl !== null) {
            $xfer += $output->writeFieldBegin('redirectUrl', TType::STRING, 8);
            $xfer += $output->writeString($this->redirectUrl);
            $xfer += $output->writeFieldEnd();
        }
        $xfer += $output->writeFieldStop();
        $xfer += $output->writeStructEnd();
        return $xfer;
    }
}