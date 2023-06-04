<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>serverlessapplicationrepository_put_application_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the permission policy for an application

### Description

Sets the permission policy for an application. For the list of actions
supported for this operation, see [Application
Permissions](https://docs.aws.amazon.com/serverlessrepo/latest/devguide/security_iam_resource-based-policy-examples.html#application-permissions)
.

### Usage

    serverlessapplicationrepository_put_application_policy(ApplicationId,
      Statements)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_put_application_policy_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
application.</p></td>
</tr>
<tr class="even">
<td><code
id="serverlessapplicationrepository_put_application_policy_:_Statements">Statements</code></td>
<td><p>[required] An array of policy statements applied to the
application.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Statements = list(
        list(
          Actions = list(
            "string"
          ),
          PrincipalOrgIDs = list(
            "string"
          ),
          Principals = list(
            "string"
          ),
          StatementId = "string"
        )
      )
    )

### Request syntax

    svc$put_application_policy(
      ApplicationId = "string",
      Statements = list(
        list(
          Actions = list(
            "string"
          ),
          PrincipalOrgIDs = list(
            "string"
          ),
          Principals = list(
            "string"
          ),
          StatementId = "string"
        )
      )
    )
