<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>serverlessapplicationrepository_get_application_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the policy for the application

### Description

Retrieves the policy for the application.

### Usage

    serverlessapplicationrepository_get_application_policy(ApplicationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_get_application_policy_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
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

    svc$get_application_policy(
      ApplicationId = "string"
    )
