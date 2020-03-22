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

interface AgeCheckServiceIf
{
    /**
     * @param int $carrier
     * @param string $sessionId
     * @param string $verifier
     * @param int $standardAge
     * @return int
     * @throws \TalkException
     */
    public function checkUserAge($carrier, $sessionId, $verifier, $standardAge);
    /**
     * @param string $openIdRedirectUrl
     * @param int $standardAge
     * @param string $verifier
     * @return \AgeCheckDocomoResult
     * @throws \TalkException
     */
    public function checkUserAgeWithDocomo($openIdRedirectUrl, $standardAge, $verifier);
    /**
     * @return string
     * @throws \TalkException
     */
    public function retrieveOpenIdAuthUrlWithDocomo();
    /**
     * @param int $carrier
     * @return \AgeCheckRequestResult
     * @throws \TalkException
     */
    public function retrieveRequestToken($carrier);
}