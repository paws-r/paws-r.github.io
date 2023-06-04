<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>marketplacemetering_register_usage</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Paid container software products sold through AWS Marketplace must integrate with the AWS Marketplace Metering Service and call the RegisterUsage operation for software entitlement and metering

### Description

Paid container software products sold through AWS Marketplace must
integrate with the AWS Marketplace Metering Service and call the
`register_usage` operation for software entitlement and metering. Free
and BYOL products for Amazon ECS or Amazon EKS aren't required to call
`register_usage`, but you may choose to do so if you would like to
receive usage data in your seller reports. The sections below explain
the behavior of `register_usage`. `register_usage` performs two primary
functions: metering and entitlement.

-   *Entitlement*: `register_usage` allows you to verify that the
    customer running your paid software is subscribed to your product on
    AWS Marketplace, enabling you to guard against unauthorized use.
    Your container image that integrates with `register_usage` is only
    required to guard against unauthorized use at container startup, as
    such a `CustomerNotSubscribedException` or
    `PlatformNotSupportedException` will only be thrown on the initial
    call to `register_usage`. Subsequent calls from the same Amazon ECS
    task instance (e.g. task-id) or Amazon EKS pod will not throw a
    `CustomerNotSubscribedException`, even if the customer unsubscribes
    while the Amazon ECS task or Amazon EKS pod is still running.

-   *Metering*: `register_usage` meters software use per ECS task, per
    hour, or per pod for Amazon EKS with usage prorated to the second. A
    minimum of 1 minute of usage applies to tasks that are short lived.
    For example, if a customer has a 10 node Amazon ECS or Amazon EKS
    cluster and a service configured as a Daemon Set, then Amazon ECS or
    Amazon EKS will launch a task on all 10 cluster nodes and the
    customer will be charged: (10 \* hourly\_rate). Metering for
    software use is automatically handled by the AWS Marketplace
    Metering Control Plane – your software is not required to perform
    any metering specific actions, other than call `register_usage` once
    for metering of software use to commence. The AWS Marketplace
    Metering Control Plane will also continue to bill customers for
    running ECS tasks and Amazon EKS pods, regardless of the customers
    subscription state, removing the need for your software to perform
    entitlement checks at runtime.

### Usage

    marketplacemetering_register_usage(ProductCode, PublicKeyVersion, Nonce)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="marketplacemetering_register_usage_:_ProductCode">ProductCode</code></td>
<td><p>[required] Product code is used to uniquely identify a product in
AWS Marketplace. The product code should be the same as the one used
during the publishing of a new product.</p></td>
</tr>
<tr class="even">
<td><code
id="marketplacemetering_register_usage_:_PublicKeyVersion">PublicKeyVersion</code></td>
<td><p>[required] Public Key Version provided by AWS
Marketplace</p></td>
</tr>
<tr class="odd">
<td><code
id="marketplacemetering_register_usage_:_Nonce">Nonce</code></td>
<td><p>(Optional) To scope down the registration to a specific running
software instance and guard against replay attacks.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PublicKeyRotationTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      Signature = "string"
    )

### Request syntax

    svc$register_usage(
      ProductCode = "string",
      PublicKeyVersion = 123,
      Nonce = "string"
    )
