<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudhsm_describe_hsm</td>
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

Retrieves information about an HSM. You can identify the HSM by its ARN
or its serial number.

### Usage

    cloudhsm_describe_hsm(HsmArn, HsmSerialNumber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudhsm_describe_hsm_:_HsmArn">HsmArn</code></td>
<td><p>The ARN of the HSM. Either the <code>HsmArn</code> or the
<code>SerialNumber</code> parameter must be specified.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudhsm_describe_hsm_:_HsmSerialNumber">HsmSerialNumber</code></td>
<td><p>The serial number of the HSM. Either the <code>HsmArn</code> or
the <code>HsmSerialNumber</code> parameter must be specified.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HsmArn = "string",
      Status = "PENDING"|"RUNNING"|"UPDATING"|"SUSPENDED"|"TERMINATING"|"TERMINATED"|"DEGRADED",
      StatusDetails = "string",
      AvailabilityZone = "string",
      EniId = "string",
      EniIp = "string",
      SubscriptionType = "PRODUCTION",
      SubscriptionStartDate = "string",
      SubscriptionEndDate = "string",
      VpcId = "string",
      SubnetId = "string",
      IamRoleArn = "string",
      SerialNumber = "string",
      VendorName = "string",
      HsmType = "string",
      SoftwareVersion = "string",
      SshPublicKey = "string",
      SshKeyLastUpdated = "string",
      ServerCertUri = "string",
      ServerCertLastUpdated = "string",
      Partitions = list(
        "string"
      )
    )

### Request syntax

    svc$describe_hsm(
      HsmArn = "string",
      HsmSerialNumber = "string"
    )
