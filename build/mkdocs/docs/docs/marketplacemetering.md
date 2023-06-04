<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>marketplacemetering</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWSMarketplace Metering

### Description

AWS Marketplace Metering Service

This reference provides descriptions of the low-level AWS Marketplace
Metering Service API.

AWS Marketplace sellers can use this API to submit usage data for custom
usage dimensions.

For information on the permissions you need to use this API, see [AWS
Marketplace metering and entitlement API
permissions](https://docs.aws.amazon.com/marketplace/latest/userguide/iam-user-policy-for-aws-marketplace-actions.html)
in the *AWS Marketplace Seller Guide.*

**Submitting Metering Records**

-   *MeterUsage* - Submits the metering record for an AWS Marketplace
    product. `meter_usage` is called from an EC2 instance or a container
    running on EKS or ECS.

-   *BatchMeterUsage* - Submits the metering record for a set of
    customers. `batch_meter_usage` is called from a
    software-as-a-service (SaaS) application.

**Accepting New Customers**

-   *ResolveCustomer* - Called by a SaaS application during the
    registration process. When a buyer visits your website during the
    registration process, the buyer submits a Registration Token through
    the browser. The Registration Token is resolved through this API to
    obtain a `CustomerIdentifier` along with the `CustomerAWSAccountId`
    and `ProductCode`.

**Entitlement and Metering for Paid Container Products**

-   Paid container software products sold through AWS Marketplace must
    integrate with the AWS Marketplace Metering Service and call the
    `register_usage` operation for software entitlement and metering.
    Free and BYOL products for Amazon ECS or Amazon EKS aren't required
    to call `register_usage`, but you can do so if you want to receive
    usage data in your seller reports. For more information on using the
    `register_usage` operation, see [Container-Based
    Products](https://docs.aws.amazon.com/marketplace/latest/userguide/container-based-products.html).

`batch_meter_usage` API calls are captured by AWS CloudTrail. You can
use Cloudtrail to verify that the SaaS metering records that you sent
are accurate by searching for records with the `eventName` of
`batch_meter_usage`. You can also use CloudTrail to audit records over
time. For more information, see the
*<span href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html">AWS
CloudTrail User Guide</span>.*

### Usage

    marketplacemetering(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="marketplacemetering_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- marketplacemetering(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td style="text-align: left;"><a href="../marketplacemetering_batch_meter_usage/"> batch_meter_usage </a></td>
<td style="text-align: left;">BatchMeterUsage is called from a SaaS
application listed on AWS Marketplace to post metering records for a set
of customers</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../marketplacemetering_meter_usage/"> meter_usage </a></td>
<td style="text-align: left;">API to emit metering records</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../marketplacemetering_register_usage/"> register_usage </a></td>
<td style="text-align: left;">Paid container software products sold
through AWS Marketplace must integrate with the AWS Marketplace Metering
Service and call the RegisterUsage operation for software entitlement
and metering</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../marketplacemetering_resolve_customer/"> resolve_customer </a></td>
<td style="text-align: left;">ResolveCustomer is called by a SaaS
application during the registration process</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- marketplacemetering()
    svc$batch_meter_usage(
      Foo = 123
    )

    ## End(Not run)
