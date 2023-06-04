<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanagerusersubscriptions_associate_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates the user to an EC2 instance to utilize user-based subscriptions

### Description

Associates the user to an EC2 instance to utilize user-based
subscriptions.

Your estimated bill for charges on the number of users and related costs
will take 48 hours to appear for billing periods that haven't closed
(marked as **Pending** billing status) in Amazon Web Services Billing.
For more information, see [Viewing your monthly
charges](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/invoice.html)
in the *Amazon Web Services Billing User Guide*.

### Usage

    licensemanagerusersubscriptions_associate_user(Domain, IdentityProvider,
      InstanceId, Username)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanagerusersubscriptions_associate_user_:_Domain">Domain</code></td>
<td><p>The domain name of the user.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanagerusersubscriptions_associate_user_:_IdentityProvider">IdentityProvider</code></td>
<td><p>[required] The identity provider of the user.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanagerusersubscriptions_associate_user_:_InstanceId">InstanceId</code></td>
<td><p>[required] The ID of the EC2 instance, which provides user-based
subscriptions.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanagerusersubscriptions_associate_user_:_Username">Username</code></td>
<td><p>[required] The user name from the identity provider for the
user.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceUserSummary = list(
        AssociationDate = "string",
        DisassociationDate = "string",
        Domain = "string",
        IdentityProvider = list(
          ActiveDirectoryIdentityProvider = list(
            DirectoryId = "string"
          )
        ),
        InstanceId = "string",
        Status = "string",
        StatusMessage = "string",
        Username = "string"
      )
    )

### Request syntax

    svc$associate_user(
      Domain = "string",
      IdentityProvider = list(
        ActiveDirectoryIdentityProvider = list(
          DirectoryId = "string"
        )
      ),
      InstanceId = "string",
      Username = "string"
    )
