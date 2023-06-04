<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>managedgrafana_describe_workspace_authentication</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Displays information about the authentication methods used in one Amazon Managed Grafana workspace

### Description

Displays information about the authentication methods used in one Amazon
Managed Grafana workspace.

### Usage

    managedgrafana_describe_workspace_authentication(workspaceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="managedgrafana_describe_workspace_authentication_:_workspaceId">workspaceId</code></td>
<td><p>[required] The ID of the workspace to return authentication
information about.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      authentication = list(
        awsSso = list(
          ssoClientId = "string"
        ),
        providers = list(
          "AWS_SSO"|"SAML"
        ),
        saml = list(
          configuration = list(
            allowedOrganizations = list(
              "string"
            ),
            assertionAttributes = list(
              email = "string",
              groups = "string",
              login = "string",
              name = "string",
              org = "string",
              role = "string"
            ),
            idpMetadata = list(
              url = "string",
              xml = "string"
            ),
            loginValidityDuration = 123,
            roleValues = list(
              admin = list(
                "string"
              ),
              editor = list(
                "string"
              )
            )
          ),
          status = "CONFIGURED"|"NOT_CONFIGURED"
        )
      )
    )

### Request syntax

    svc$describe_workspace_authentication(
      workspaceId = "string"
    )
