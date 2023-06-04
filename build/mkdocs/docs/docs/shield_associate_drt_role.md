<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>shield_associate_drt_role</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Authorizes the Shield Response Team (SRT) using the specified role, to access your Amazon Web Services account to assist with DDoS attack mitigation during potential attacks

### Description

Authorizes the Shield Response Team (SRT) using the specified role, to
access your Amazon Web Services account to assist with DDoS attack
mitigation during potential attacks. This enables the SRT to inspect
your WAF configuration and create or update WAF rules and web ACLs.

You can associate only one `RoleArn` with your subscription. If you
submit an `associate_drt_role` request for an account that already has
an associated role, the new `RoleArn` will replace the existing
`RoleArn`.

Prior to making the `associate_drt_role` request, you must attach the
`AWSShieldDRTAccessPolicy` managed policy to the role that you'll
specify in the request. You can access this policy in the IAM console at
AWSShieldDRTAccessPolicy. For more information see [Adding and removing
IAM identity
permissions](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage-attach-detach.html).
The role must also trust the service principal
`drt.shield.amazonaws.com`. For more information, see [IAM JSON policy
elements:
Principal](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html).

The SRT will have access only to your WAF and Shield resources. By
submitting this request, you authorize the SRT to inspect your WAF and
Shield configuration and create and update WAF rules and web ACLs on
your behalf. The SRT takes these actions only if explicitly authorized
by you.

You must have the `iam:PassRole` permission to make an
`associate_drt_role` request. For more information, see [Granting a user
permissions to pass a role to an Amazon Web Services
service](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html).

To use the services of the SRT and make an `associate_drt_role` request,
you must be subscribed to the [Business Support
plan](https://aws.amazon.com/premiumsupport/plans/business/) or the
[Enterprise Support
plan](https://aws.amazon.com/premiumsupport/plans/enterprise/).

### Usage

    shield_associate_drt_role(RoleArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="shield_associate_drt_role_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the role the SRT
will use to access your Amazon Web Services account.</p>
<p>Prior to making the <code>associate_drt_role</code> request, you must
attach the AWSShieldDRTAccessPolicy managed policy to this role. For
more information see Attaching and Detaching IAM Policies.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_drt_role(
      RoleArn = "string"
    )
