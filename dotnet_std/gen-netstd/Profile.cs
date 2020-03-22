/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.Threading;
using System.Threading.Tasks;
using Thrift;
using Thrift.Collections;

using Thrift.Protocol;
using Thrift.Protocol.Entities;
using Thrift.Protocol.Utilities;
using Thrift.Transport;
using Thrift.Transport.Client;
using Thrift.Transport.Server;
using Thrift.Processor;



public partial class Profile : TBase
{
  private string _mid;
  private string _userid;
  private string _phone;
  private string _email;
  private string _regionCode;
  private string _displayName;
  private string _phoneticName;
  private string _pictureStatus;
  private string _thumbnailUrl;
  private string _statusMessage;
  private bool _allowSearchByUserid;
  private bool _allowSearchByEmail;
  private string _picturePath;
  private string _musicProfile;
  private string _videoProfile;

  public string Mid
  {
    get
    {
      return _mid;
    }
    set
    {
      __isset.mid = true;
      this._mid = value;
    }
  }

  public string Userid
  {
    get
    {
      return _userid;
    }
    set
    {
      __isset.userid = true;
      this._userid = value;
    }
  }

  public string Phone
  {
    get
    {
      return _phone;
    }
    set
    {
      __isset.phone = true;
      this._phone = value;
    }
  }

  public string Email
  {
    get
    {
      return _email;
    }
    set
    {
      __isset.email = true;
      this._email = value;
    }
  }

  public string RegionCode
  {
    get
    {
      return _regionCode;
    }
    set
    {
      __isset.regionCode = true;
      this._regionCode = value;
    }
  }

  public string DisplayName
  {
    get
    {
      return _displayName;
    }
    set
    {
      __isset.displayName = true;
      this._displayName = value;
    }
  }

  public string PhoneticName
  {
    get
    {
      return _phoneticName;
    }
    set
    {
      __isset.phoneticName = true;
      this._phoneticName = value;
    }
  }

  public string PictureStatus
  {
    get
    {
      return _pictureStatus;
    }
    set
    {
      __isset.pictureStatus = true;
      this._pictureStatus = value;
    }
  }

  public string ThumbnailUrl
  {
    get
    {
      return _thumbnailUrl;
    }
    set
    {
      __isset.thumbnailUrl = true;
      this._thumbnailUrl = value;
    }
  }

  public string StatusMessage
  {
    get
    {
      return _statusMessage;
    }
    set
    {
      __isset.statusMessage = true;
      this._statusMessage = value;
    }
  }

  public bool AllowSearchByUserid
  {
    get
    {
      return _allowSearchByUserid;
    }
    set
    {
      __isset.allowSearchByUserid = true;
      this._allowSearchByUserid = value;
    }
  }

  public bool AllowSearchByEmail
  {
    get
    {
      return _allowSearchByEmail;
    }
    set
    {
      __isset.allowSearchByEmail = true;
      this._allowSearchByEmail = value;
    }
  }

  public string PicturePath
  {
    get
    {
      return _picturePath;
    }
    set
    {
      __isset.picturePath = true;
      this._picturePath = value;
    }
  }

  public string MusicProfile
  {
    get
    {
      return _musicProfile;
    }
    set
    {
      __isset.musicProfile = true;
      this._musicProfile = value;
    }
  }

  public string VideoProfile
  {
    get
    {
      return _videoProfile;
    }
    set
    {
      __isset.videoProfile = true;
      this._videoProfile = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool mid;
    public bool userid;
    public bool phone;
    public bool email;
    public bool regionCode;
    public bool displayName;
    public bool phoneticName;
    public bool pictureStatus;
    public bool thumbnailUrl;
    public bool statusMessage;
    public bool allowSearchByUserid;
    public bool allowSearchByEmail;
    public bool picturePath;
    public bool musicProfile;
    public bool videoProfile;
  }

  public Profile()
  {
  }

  public async Task ReadAsync(TProtocol iprot, CancellationToken cancellationToken)
  {
    iprot.IncrementRecursionDepth();
    try
    {
      TField field;
      await iprot.ReadStructBeginAsync(cancellationToken);
      while (true)
      {
        field = await iprot.ReadFieldBeginAsync(cancellationToken);
        if (field.Type == TType.Stop)
        {
          break;
        }

        switch (field.ID)
        {
          case 1:
            if (field.Type == TType.String)
            {
              Mid = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 3:
            if (field.Type == TType.String)
            {
              Userid = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 10:
            if (field.Type == TType.String)
            {
              Phone = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 11:
            if (field.Type == TType.String)
            {
              Email = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 12:
            if (field.Type == TType.String)
            {
              RegionCode = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 20:
            if (field.Type == TType.String)
            {
              DisplayName = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 21:
            if (field.Type == TType.String)
            {
              PhoneticName = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 22:
            if (field.Type == TType.String)
            {
              PictureStatus = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 23:
            if (field.Type == TType.String)
            {
              ThumbnailUrl = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 24:
            if (field.Type == TType.String)
            {
              StatusMessage = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 31:
            if (field.Type == TType.Bool)
            {
              AllowSearchByUserid = await iprot.ReadBoolAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 32:
            if (field.Type == TType.Bool)
            {
              AllowSearchByEmail = await iprot.ReadBoolAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 33:
            if (field.Type == TType.String)
            {
              PicturePath = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 34:
            if (field.Type == TType.String)
            {
              MusicProfile = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 35:
            if (field.Type == TType.String)
            {
              VideoProfile = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          default: 
            await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            break;
        }

        await iprot.ReadFieldEndAsync(cancellationToken);
      }

      await iprot.ReadStructEndAsync(cancellationToken);
    }
    finally
    {
      iprot.DecrementRecursionDepth();
    }
  }

  public async Task WriteAsync(TProtocol oprot, CancellationToken cancellationToken)
  {
    oprot.IncrementRecursionDepth();
    try
    {
      var struc = new TStruct("Profile");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (Mid != null && __isset.mid)
      {
        field.Name = "mid";
        field.Type = TType.String;
        field.ID = 1;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(Mid, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (Userid != null && __isset.userid)
      {
        field.Name = "userid";
        field.Type = TType.String;
        field.ID = 3;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(Userid, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (Phone != null && __isset.phone)
      {
        field.Name = "phone";
        field.Type = TType.String;
        field.ID = 10;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(Phone, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (Email != null && __isset.email)
      {
        field.Name = "email";
        field.Type = TType.String;
        field.ID = 11;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(Email, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (RegionCode != null && __isset.regionCode)
      {
        field.Name = "regionCode";
        field.Type = TType.String;
        field.ID = 12;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(RegionCode, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (DisplayName != null && __isset.displayName)
      {
        field.Name = "displayName";
        field.Type = TType.String;
        field.ID = 20;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(DisplayName, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (PhoneticName != null && __isset.phoneticName)
      {
        field.Name = "phoneticName";
        field.Type = TType.String;
        field.ID = 21;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(PhoneticName, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (PictureStatus != null && __isset.pictureStatus)
      {
        field.Name = "pictureStatus";
        field.Type = TType.String;
        field.ID = 22;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(PictureStatus, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (ThumbnailUrl != null && __isset.thumbnailUrl)
      {
        field.Name = "thumbnailUrl";
        field.Type = TType.String;
        field.ID = 23;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(ThumbnailUrl, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (StatusMessage != null && __isset.statusMessage)
      {
        field.Name = "statusMessage";
        field.Type = TType.String;
        field.ID = 24;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(StatusMessage, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (__isset.allowSearchByUserid)
      {
        field.Name = "allowSearchByUserid";
        field.Type = TType.Bool;
        field.ID = 31;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteBoolAsync(AllowSearchByUserid, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (__isset.allowSearchByEmail)
      {
        field.Name = "allowSearchByEmail";
        field.Type = TType.Bool;
        field.ID = 32;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteBoolAsync(AllowSearchByEmail, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (PicturePath != null && __isset.picturePath)
      {
        field.Name = "picturePath";
        field.Type = TType.String;
        field.ID = 33;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(PicturePath, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (MusicProfile != null && __isset.musicProfile)
      {
        field.Name = "musicProfile";
        field.Type = TType.String;
        field.ID = 34;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(MusicProfile, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (VideoProfile != null && __isset.videoProfile)
      {
        field.Name = "videoProfile";
        field.Type = TType.String;
        field.ID = 35;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(VideoProfile, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      await oprot.WriteFieldStopAsync(cancellationToken);
      await oprot.WriteStructEndAsync(cancellationToken);
    }
    finally
    {
      oprot.DecrementRecursionDepth();
    }
  }

  public override bool Equals(object that)
  {
    var other = that as Profile;
    if (other == null) return false;
    if (ReferenceEquals(this, other)) return true;
    return ((__isset.mid == other.__isset.mid) && ((!__isset.mid) || (System.Object.Equals(Mid, other.Mid))))
      && ((__isset.userid == other.__isset.userid) && ((!__isset.userid) || (System.Object.Equals(Userid, other.Userid))))
      && ((__isset.phone == other.__isset.phone) && ((!__isset.phone) || (System.Object.Equals(Phone, other.Phone))))
      && ((__isset.email == other.__isset.email) && ((!__isset.email) || (System.Object.Equals(Email, other.Email))))
      && ((__isset.regionCode == other.__isset.regionCode) && ((!__isset.regionCode) || (System.Object.Equals(RegionCode, other.RegionCode))))
      && ((__isset.displayName == other.__isset.displayName) && ((!__isset.displayName) || (System.Object.Equals(DisplayName, other.DisplayName))))
      && ((__isset.phoneticName == other.__isset.phoneticName) && ((!__isset.phoneticName) || (System.Object.Equals(PhoneticName, other.PhoneticName))))
      && ((__isset.pictureStatus == other.__isset.pictureStatus) && ((!__isset.pictureStatus) || (System.Object.Equals(PictureStatus, other.PictureStatus))))
      && ((__isset.thumbnailUrl == other.__isset.thumbnailUrl) && ((!__isset.thumbnailUrl) || (System.Object.Equals(ThumbnailUrl, other.ThumbnailUrl))))
      && ((__isset.statusMessage == other.__isset.statusMessage) && ((!__isset.statusMessage) || (System.Object.Equals(StatusMessage, other.StatusMessage))))
      && ((__isset.allowSearchByUserid == other.__isset.allowSearchByUserid) && ((!__isset.allowSearchByUserid) || (System.Object.Equals(AllowSearchByUserid, other.AllowSearchByUserid))))
      && ((__isset.allowSearchByEmail == other.__isset.allowSearchByEmail) && ((!__isset.allowSearchByEmail) || (System.Object.Equals(AllowSearchByEmail, other.AllowSearchByEmail))))
      && ((__isset.picturePath == other.__isset.picturePath) && ((!__isset.picturePath) || (System.Object.Equals(PicturePath, other.PicturePath))))
      && ((__isset.musicProfile == other.__isset.musicProfile) && ((!__isset.musicProfile) || (System.Object.Equals(MusicProfile, other.MusicProfile))))
      && ((__isset.videoProfile == other.__isset.videoProfile) && ((!__isset.videoProfile) || (System.Object.Equals(VideoProfile, other.VideoProfile))));
  }

  public override int GetHashCode() {
    int hashcode = 157;
    unchecked {
      if(__isset.mid)
        hashcode = (hashcode * 397) + Mid.GetHashCode();
      if(__isset.userid)
        hashcode = (hashcode * 397) + Userid.GetHashCode();
      if(__isset.phone)
        hashcode = (hashcode * 397) + Phone.GetHashCode();
      if(__isset.email)
        hashcode = (hashcode * 397) + Email.GetHashCode();
      if(__isset.regionCode)
        hashcode = (hashcode * 397) + RegionCode.GetHashCode();
      if(__isset.displayName)
        hashcode = (hashcode * 397) + DisplayName.GetHashCode();
      if(__isset.phoneticName)
        hashcode = (hashcode * 397) + PhoneticName.GetHashCode();
      if(__isset.pictureStatus)
        hashcode = (hashcode * 397) + PictureStatus.GetHashCode();
      if(__isset.thumbnailUrl)
        hashcode = (hashcode * 397) + ThumbnailUrl.GetHashCode();
      if(__isset.statusMessage)
        hashcode = (hashcode * 397) + StatusMessage.GetHashCode();
      if(__isset.allowSearchByUserid)
        hashcode = (hashcode * 397) + AllowSearchByUserid.GetHashCode();
      if(__isset.allowSearchByEmail)
        hashcode = (hashcode * 397) + AllowSearchByEmail.GetHashCode();
      if(__isset.picturePath)
        hashcode = (hashcode * 397) + PicturePath.GetHashCode();
      if(__isset.musicProfile)
        hashcode = (hashcode * 397) + MusicProfile.GetHashCode();
      if(__isset.videoProfile)
        hashcode = (hashcode * 397) + VideoProfile.GetHashCode();
    }
    return hashcode;
  }

  public override string ToString()
  {
    var sb = new StringBuilder("Profile(");
    bool __first = true;
    if (Mid != null && __isset.mid)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Mid: ");
      Mid.ToString(sb);
    }
    if (Userid != null && __isset.userid)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Userid: ");
      Userid.ToString(sb);
    }
    if (Phone != null && __isset.phone)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Phone: ");
      Phone.ToString(sb);
    }
    if (Email != null && __isset.email)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Email: ");
      Email.ToString(sb);
    }
    if (RegionCode != null && __isset.regionCode)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("RegionCode: ");
      RegionCode.ToString(sb);
    }
    if (DisplayName != null && __isset.displayName)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("DisplayName: ");
      DisplayName.ToString(sb);
    }
    if (PhoneticName != null && __isset.phoneticName)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("PhoneticName: ");
      PhoneticName.ToString(sb);
    }
    if (PictureStatus != null && __isset.pictureStatus)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("PictureStatus: ");
      PictureStatus.ToString(sb);
    }
    if (ThumbnailUrl != null && __isset.thumbnailUrl)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("ThumbnailUrl: ");
      ThumbnailUrl.ToString(sb);
    }
    if (StatusMessage != null && __isset.statusMessage)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("StatusMessage: ");
      StatusMessage.ToString(sb);
    }
    if (__isset.allowSearchByUserid)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("AllowSearchByUserid: ");
      AllowSearchByUserid.ToString(sb);
    }
    if (__isset.allowSearchByEmail)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("AllowSearchByEmail: ");
      AllowSearchByEmail.ToString(sb);
    }
    if (PicturePath != null && __isset.picturePath)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("PicturePath: ");
      PicturePath.ToString(sb);
    }
    if (MusicProfile != null && __isset.musicProfile)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("MusicProfile: ");
      MusicProfile.ToString(sb);
    }
    if (VideoProfile != null && __isset.videoProfile)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("VideoProfile: ");
      VideoProfile.ToString(sb);
    }
    sb.Append(")");
    return sb.ToString();
  }
}
