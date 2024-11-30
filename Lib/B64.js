var Base64 = {
 
  // private property
  _TABLE : "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",

  // public method for encoding
  encode: function(data)
  {
    data = Base64._utf8_encode(data);
    /************************************************/
    var retValue = "";
    /************************************************/
    var i = 0;
    /************************************************/
    while (i < data.length)
    {
      let chr1 = data.charCodeAt(i++);
      let chr2 = data.charCodeAt(i++);
      let chr3 = data.charCodeAt(i++);
      /************************************************/
      let enc1 =                      (chr1 >> 2);
      let enc2 = ((chr1 &  3) << 4) | (chr2 >> 4);
      let enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
      let enc4 = ((chr3 & 63)     )              ;
      /************************************************/
      if (isNaN(chr2)) { enc3 = 64; }
      if (isNaN(chr3)) { enc4 = 64; }
      /************************************************/
      retValue +=
        this._TABLE.charAt(enc1) + this._TABLE.charAt(enc2) +
        this._TABLE.charAt(enc3) + this._TABLE.charAt(enc4);
    }
    /************************************************/
    return retValue;
  },
  decode: function(data)
  {
    data = data.replace(/[^A-Za-z0-9\+\/\=]/g, "");
    /************************************************/
    var retValue = "";
    /************************************************/
    var i = 0;
    /************************************************/
    while (i < data.length)
    {
      let enc1 = this._TABLE.indexOf(data.charAt(i++));
      let enc2 = this._TABLE.indexOf(data.charAt(i++));
      let enc3 = this._TABLE.indexOf(data.charAt(i++));
      let enc4 = this._TABLE.indexOf(data.charAt(i++));
      /************************************************/
      let chr1 = ((enc1     ) << 2) | (enc2 >> 4);
      let chr2 = ((enc2 & 15) << 4) | (enc3 >> 2);
      let chr3 = ((enc3 &  3) << 6) | (enc4     );
      /************************************************/
                        retValue = retValue + String.fromCharCode(chr1);
      if (enc3 != 64) { retValue = retValue + String.fromCharCode(chr2); }
      if (enc4 != 64) { retValue = retValue + String.fromCharCode(chr3); }
    }
    /************************************************/
    retValue = Base64._utf8_decode(retValue);
    /************************************************/
    return retValue;
  },
  _utf8_encode: function(data)
  {
    data = data.replace(/\r\n/g,"\n");
    /************************************************/
    var retValue = "";
    /************************************************/
    for (var n = 0; n < data.length; n++)
    {
      var c = data.charCodeAt(n);
      /************************************************/
      if (c < 128)
      {
        retValue += String.fromCharCode(c);
      }
      else if ((c > 127) && (c < 2048))
      {
        retValue += String.fromCharCode((c >> 6) | 192);
        retValue += String.fromCharCode((c & 63) | 128);
      } else {
        retValue += String.fromCharCode( (c >> 12      ) | 224);
        retValue += String.fromCharCode(((c >>  6) & 63) | 128);
        retValue += String.fromCharCode( (c        & 63) | 128);
      }
    }
    return retValue;
  },
  _utf8_decode: function(data)
  {
    var retValue = "";
    var i = 0;
    var c = c1 = c2 = 0;

    while ( i < data.length )
    {
      c = data.charCodeAt(i);

      if (c < 128)
      {
        retValue += String.fromCharCode(c);
        i++;
      }
      else if((c > 191) && (c < 224))
      {
        c2 = data.charCodeAt(i+1);
        retValue += String.fromCharCode(((c & 31) << 6) | (c2 & 63));
        i += 2;
      }
      else
      {
        c2 = data.charCodeAt(i+1);
        c3 = data.charCodeAt(i+2);
        retValue += String.fromCharCode(((c & 15) << 12) | ((c2 & 63) << 6) | (c3 & 63));
        i += 3;
      }
    }
    return retValue;
  }
}