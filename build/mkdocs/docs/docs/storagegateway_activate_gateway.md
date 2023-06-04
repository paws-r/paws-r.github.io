<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_activate_gateway</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Activates the gateway you previously deployed on your host

### Description

Activates the gateway you previously deployed on your host. In the
activation process, you specify information such as the Amazon Web
Services Region that you want to use for storing snapshots or tapes, the
time zone for scheduled snapshots the gateway snapshot schedule window,
an activation key, and a name for your gateway. The activation process
also associates your gateway with your account. For more information,
see `update_gateway_information`.

You must turn on the gateway VM before you can activate your gateway.

### Usage

    storagegateway_activate_gateway(ActivationKey, GatewayName,
      GatewayTimezone, GatewayRegion, GatewayType, TapeDriveType,
      MediumChangerType, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_activate_gateway_:_ActivationKey">ActivationKey</code></td>
<td><p>[required] Your gateway activation key. You can obtain the
activation key by sending an HTTP GET request with redirects enabled to
the gateway IP address (port 80). The redirect URL returned in the
response provides you the activation key for your gateway in the query
string parameter <code>activationKey</code>. It may also include other
activation-related parameters, however, these are merely defaults – the
arguments you pass to the <code>activate_gateway</code> API call
determine the actual configuration of your gateway.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/storagegateway/index.html">Getting
activation key</a> in the <em>Storage Gateway User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_activate_gateway_:_GatewayName">GatewayName</code></td>
<td><p>[required] The name you configured for your gateway.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_activate_gateway_:_GatewayTimezone">GatewayTimezone</code></td>
<td><p>[required] A value that indicates the time zone you want to set
for the gateway. The time zone is of the format "GMT-hr:mm" or
"GMT+hr:mm". For example, GMT-4:00 indicates the time is 4 hours behind
GMT. GMT+2:00 indicates the time is 2 hours ahead of GMT. The time zone
is used, for example, for scheduling snapshots and your gateway's
maintenance schedule.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_activate_gateway_:_GatewayRegion">GatewayRegion</code></td>
<td><p>[required] A value that indicates the Amazon Web Services Region
where you want to store your data. The gateway Amazon Web Services
Region specified must be the same Amazon Web Services Region as the
Amazon Web Services Region in your <code>Host</code> header in the
request. For more information about available Amazon Web Services
Regions and endpoints for Storage Gateway, see <a
href="https://docs.aws.amazon.com/general/latest/gr/sg.html">Storage
Gateway endpoints and quotas</a> in the <em>Amazon Web Services General
Reference</em>.</p>
<p>Valid Values: See <a
href="https://docs.aws.amazon.com/general/latest/gr/sg.html">Storage
Gateway endpoints and quotas</a> in the <em>Amazon Web Services General
Reference</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_activate_gateway_:_GatewayType">GatewayType</code></td>
<td><p>A value that defines the type of gateway to activate. The type
specified is critical to all later functions of the gateway and cannot
be changed after activation. The default value is
<code>CACHED</code>.</p>
<p>Valid Values: <code>STORED</code> | <code>CACHED</code> |
<code>VTL</code> | <code>VTL_SNOW</code> | <code>FILE_S3</code> |
<code>FILE_FSX_SMB</code></p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_activate_gateway_:_TapeDriveType">TapeDriveType</code></td>
<td><p>The value that indicates the type of tape drive to use for tape
gateway. This field is optional.</p>
<p>Valid Values: <code>IBM-ULT3580-TD5</code></p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_activate_gateway_:_MediumChangerType">MediumChangerType</code></td>
<td><p>The value that indicates the type of medium changer to use for
tape gateway. This field is optional.</p>
<p>Valid Values: <code>STK-L700</code> | <code>AWS-Gateway-VTL</code> |
<code style="white-space: pre;">⁠IBM-03584L32-0402⁠</code></p></td>
</tr>
<tr class="even">
<td><code id="storagegateway_activate_gateway_:_Tags">Tags</code></td>
<td><p>A list of up to 50 tags that you can assign to the gateway. Each
tag is a key-value pair.</p>
<p>Valid characters for key and value are letters, spaces, and numbers
that can be represented in UTF-8 format, and the following special
characters: + - = . _ : / @. The maximum length of a tag's key is 128
characters, and the maximum length for a tag's value is 256
characters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayARN = "string"
    )

### Request syntax

    svc$activate_gateway(
      ActivationKey = "string",
      GatewayName = "string",
      GatewayTimezone = "string",
      GatewayRegion = "string",
      GatewayType = "string",
      TapeDriveType = "string",
      MediumChangerType = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # Activates the gateway you previously deployed on your host.
    svc$activate_gateway(
      ActivationKey = "29AV1-3OFV9-VVIUB-NKT0I-LRO6V",
      GatewayName = "My_Gateway",
      GatewayRegion = "us-east-1",
      GatewayTimezone = "GMT-12:00",
      GatewayType = "STORED",
      MediumChangerType = "AWS-Gateway-VTL",
      TapeDriveType = "IBM-ULT3580-TD5"
    )

    ## End(Not run)
