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

final class ReportCategory
{
    const PUSH_NORMAL_PLAIN = 0;

    const PUSH_NORMAL_E2EE = 1;

    const PUSH_VOIP_PLAIN = 2;

    const PUSH_VOIP_E2EE = 3;

    static public $__names = array(
        0 => 'PUSH_NORMAL_PLAIN',
        1 => 'PUSH_NORMAL_E2EE',
        2 => 'PUSH_VOIP_PLAIN',
        3 => 'PUSH_VOIP_E2EE',
    );
}
