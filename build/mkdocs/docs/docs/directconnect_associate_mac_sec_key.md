<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_associate_mac_sec_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a MAC Security (MACsec) Connection Key Name (CKN)/ Connectivity Association Key (CAK) pair with an Direct Connect dedicated connection

### Description

Associates a MAC Security (MACsec) Connection Key Name (CKN)/
Connectivity Association Key (CAK) pair with an Direct Connect dedicated
connection.

You must supply either the `⁠secretARN,⁠` or the CKN/CAK (`ckn` and `cak`)
pair in the request.

For information about MAC Security (MACsec) key considerations, see
[MACsec pre-shared CKN/CAK key
considerations](https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html#mac-sec-key-consideration)
in the *Direct Connect User Guide*.

### Usage

    directconnect_associate_mac_sec_key(connectionId, secretARN, ckn, cak)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directconnect_associate_mac_sec_key_:_connectionId">connectionId</code></td>
<td><p>[required] The ID of the dedicated connection (dxcon-xxxx), or
the ID of the LAG (dxlag-xxxx).</p>
<p>You can use <code>describe_connections</code> or
<code>describe_lags</code> to retrieve connection ID.</p></td>
</tr>
<tr class="even">
<td><code
id="directconnect_associate_mac_sec_key_:_secretARN">secretARN</code></td>
<td><p>The Amazon Resource Name (ARN) of the MAC Security (MACsec)
secret key to associate with the dedicated connection.</p>
<p>You can use <code>describe_connections</code> or
<code>describe_lags</code> to retrieve the MAC Security (MACsec) secret
key.</p>
<p>If you use this request parameter, you do not use the
<code>ckn</code> and <code>cak</code> request parameters.</p></td>
</tr>
<tr class="odd">
<td><code id="directconnect_associate_mac_sec_key_:_ckn">ckn</code></td>
<td><p>The MAC Security (MACsec) CKN to associate with the dedicated
connection.</p>
<p>You can create the CKN/CAK pair using an industry standard tool.</p>
<p>The valid values are 64 hexadecimal characters (0-9, A-E).</p>
<p>If you use this request parameter, you must use the <code>cak</code>
request parameter and not use the <code>secretARN</code> request
parameter.</p></td>
</tr>
<tr class="even">
<td><code id="directconnect_associate_mac_sec_key_:_cak">cak</code></td>
<td><p>The MAC Security (MACsec) CAK to associate with the dedicated
connection.</p>
<p>You can create the CKN/CAK pair using an industry standard tool.</p>
<p>The valid values are 64 hexadecimal characters (0-9, A-E).</p>
<p>If you use this request parameter, you must use the <code>ckn</code>
request parameter and not use the <code>secretARN</code> request
parameter.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      connectionId = "string",
      macSecKeys = list(
        list(
          secretARN = "string",
          ckn = "string",
          state = "string",
          startOn = "string"
        )
      )
    )

### Request syntax

    svc$associate_mac_sec_key(
      connectionId = "string",
      secretARN = "string",
      ckn = "string",
      cak = "string"
    )
