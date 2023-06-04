<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudhsm_create_hsm</td>
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

Creates an uninitialized HSM instance.

There is an upfront fee charged for each HSM instance that you create
with the `create_hsm` operation. If you accidentally provision an HSM
and want to request a refund, delete the instance using the `delete_hsm`
operation, go to the AWS Support Center, create a new case, and select
**Account and Billing Support**.

It can take up to 20 minutes to create and provision an HSM. You can
monitor the status of the HSM with the `describe_hsm` operation. The HSM
is ready to be initialized when the status changes to `RUNNING`.

### Usage

    cloudhsm_create_hsm(SubnetId, SshKey, EniIp, IamRoleArn, ExternalId,
      SubscriptionType, ClientToken, SyslogIp)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudhsm_create_hsm_:_SubnetId">SubnetId</code></td>
<td><p>[required] The identifier of the subnet in your VPC in which to
place the HSM.</p></td>
</tr>
<tr class="even">
<td><code id="cloudhsm_create_hsm_:_SshKey">SshKey</code></td>
<td><p>[required] The SSH public key to install on the HSM.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudhsm_create_hsm_:_EniIp">EniIp</code></td>
<td><p>The IP address to assign to the HSM's ENI.</p>
<p>If an IP address is not specified, an IP address will be randomly
chosen from the CIDR range of the subnet.</p></td>
</tr>
<tr class="even">
<td><code id="cloudhsm_create_hsm_:_IamRoleArn">IamRoleArn</code></td>
<td><p>[required] The ARN of an IAM role to enable the AWS CloudHSM
service to allocate an ENI on your behalf.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudhsm_create_hsm_:_ExternalId">ExternalId</code></td>
<td><p>The external ID from <code>IamRoleArn</code>, if
present.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudhsm_create_hsm_:_SubscriptionType">SubscriptionType</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code id="cloudhsm_create_hsm_:_ClientToken">ClientToken</code></td>
<td><p>A user-defined token to ensure idempotence. Subsequent calls to
this operation with the same token will be ignored.</p></td>
</tr>
<tr class="even">
<td><code id="cloudhsm_create_hsm_:_SyslogIp">SyslogIp</code></td>
<td><p>The IP address for the syslog monitoring server. The AWS CloudHSM
service only supports one syslog monitoring server.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HsmArn = "string"
    )

### Request syntax

    svc$create_hsm(
      SubnetId = "string",
      SshKey = "string",
      EniIp = "string",
      IamRoleArn = "string",
      ExternalId = "string",
      SubscriptionType = "PRODUCTION",
      ClientToken = "string",
      SyslogIp = "string"
    )
