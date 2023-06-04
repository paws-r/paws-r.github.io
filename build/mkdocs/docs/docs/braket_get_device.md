<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>braket_get_device</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the devices available in Amazon Braket

### Description

Retrieves the devices available in Amazon Braket.

For backwards compatibility with older versions of BraketSchemas,
OpenQASM information is omitted from GetDevice API calls. To get this
information the user-agent needs to present a recent version of the
BraketSchemas (1.8.0 or later). The Braket SDK automatically reports
this for you. If you do not see OpenQASM results in the GetDevice
response when using a Braket SDK, you may need to set
AWS\_EXECUTION\_ENV environment variable to configure user-agent. See
the code examples provided below for how to do this for the AWS CLI,
Boto3, and the Go, Java, and JavaScript/TypeScript SDKs.

### Usage

    braket_get_device(deviceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="braket_get_device_:_deviceArn">deviceArn</code></td>
<td><p>[required] The ARN of the device to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      deviceArn = "string",
      deviceCapabilities = "string",
      deviceName = "string",
      deviceStatus = "ONLINE"|"OFFLINE"|"RETIRED",
      deviceType = "QPU"|"SIMULATOR",
      providerName = "string"
    )

### Request syntax

    svc$get_device(
      deviceArn = "string"
    )
