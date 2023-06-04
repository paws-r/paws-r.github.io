<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>managedgrafana_update_workspace_authentication</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use this operation to define the identity provider (IdP) that this workspace authenticates users from, using SAML

### Description

Use this operation to define the identity provider (IdP) that this
workspace authenticates users from, using SAML. You can also map SAML
assertion attributes to workspace user information and define which
groups in the assertion attribute are to have the `Admin` and `Editor`
roles in the workspace.

Changes to the authentication method for a workspace may take a few
minutes to take effect.

### Usage

    managedgrafana_update_workspace_authentication(authenticationProviders,
      samlConfiguration, workspaceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="managedgrafana_update_workspace_authentication_:_authenticationProviders">authenticationProviders</code></td>
<td><p>[required] Specifies whether this workspace uses SAML 2.0, IAM
Identity Center (successor to Single Sign-On), or both to authenticate
users for using the Grafana console within a workspace. For more
information, see <a
href="https://docs.aws.amazon.com/grafana/latest/userguide/authentication-in-AMG.html">User
authentication in Amazon Managed Grafana</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="managedgrafana_update_workspace_authentication_:_samlConfiguration">samlConfiguration</code></td>
<td><p>If the workspace uses SAML, use this structure to map SAML
assertion attributes to workspace user information and define which
groups in the assertion attribute are to have the <code>Admin</code> and
<code>Editor</code> roles in the workspace.</p></td>
</tr>
<tr class="odd">
<td><code
id="managedgrafana_update_workspace_authentication_:_workspaceId">workspaceId</code></td>
<td><p>[required] The ID of the workspace to update the authentication
for.</p></td>
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

    svc$update_workspace_authentication(
      authenticationProviders = list(
        "AWS_SSO"|"SAML"
      ),
      samlConfiguration = list(
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
      workspaceId = "string"
    )
