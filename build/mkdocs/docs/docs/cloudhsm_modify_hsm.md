<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudhsm_modify_hsm</td>
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

Modifies an HSM.

This operation can result in the HSM being offline for up to 15 minutes
while the AWS CloudHSM service is reconfigured. If you are modifying a
production HSM, you should ensure that your AWS CloudHSM service is
configured for high availability, and consider executing this operation
during a maintenance window.

### Usage

    cloudhsm_modify_hsm(HsmArn, SubnetId, EniIp, IamRoleArn, ExternalId,
      SyslogIp)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudhsm_modify_hsm_:_HsmArn">HsmArn</code></td>
<td><p>[required] The ARN of the HSM to modify.</p></td>
</tr>
<tr class="even">
<td><code id="cloudhsm_modify_hsm_:_SubnetId">SubnetId</code></td>
<td><p>The new identifier of the subnet that the HSM is in. The new
subnet must be in the same Availability Zone as the current
subnet.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudhsm_modify_hsm_:_EniIp">EniIp</code></td>
<td><p>The new IP address for the elastic network interface (ENI)
attached to the HSM.</p>
<p>If the HSM is moved to a different subnet, and an IP address is not
specified, an IP address will be randomly chosen from the CIDR range of
the new subnet.</p></td>
</tr>
<tr class="even">
<td><code id="cloudhsm_modify_hsm_:_IamRoleArn">IamRoleArn</code></td>
<td><p>The new IAM role ARN.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudhsm_modify_hsm_:_ExternalId">ExternalId</code></td>
<td><p>The new external ID.</p></td>
</tr>
<tr class="even">
<td><code id="cloudhsm_modify_hsm_:_SyslogIp">SyslogIp</code></td>
<td><p>The new IP address for the syslog monitoring server. The AWS
CloudHSM service only supports one syslog monitoring server.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HsmArn = "string"
    )

### Request syntax

    svc$modify_hsm(
      HsmArn = "string",
      SubnetId = "string",
      EniIp = "string",
      IamRoleArn = "string",
      ExternalId = "string",
      SyslogIp = "string"
    )
