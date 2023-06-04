<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudhsm_get_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This is documentation for AWS CloudHSM Classic

### Description

This is documentation for **AWS CloudHSM Classic**. For more
information, see [AWS CloudHSM Classic
FAQs](https://aws.amazon.com/cloudhsm/faqs/), the AWS CloudHSM Classic
User Guide, and the [AWS CloudHSM Classic API
Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

**For information about the current version of AWS CloudHSM**, see [AWS
CloudHSM](https://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the
[AWS CloudHSM API
Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

Gets the configuration files necessary to connect to all high
availability partition groups the client is associated with.

### Usage

    cloudhsm_get_config(ClientArn, ClientVersion, HapgList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudhsm_get_config_:_ClientArn">ClientArn</code></td>
<td><p>[required] The ARN of the client.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudhsm_get_config_:_ClientVersion">ClientVersion</code></td>
<td><p>[required] The client version.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudhsm_get_config_:_HapgList">HapgList</code></td>
<td><p>[required] A list of ARNs that identify the high-availability
partition groups that are associated with the client.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConfigType = "string",
      ConfigFile = "string",
      ConfigCred = "string"
    )

### Request syntax

    svc$get_config(
      ClientArn = "string",
      ClientVersion = "5.1"|"5.3",
      HapgList = list(
        "string"
      )
    )
