<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_get_authorization_token</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves an authorization token

### Description

Retrieves an authorization token. An authorization token represents your
IAM authentication credentials and can be used to access any Amazon ECR
registry that your IAM principal has access to. The authorization token
is valid for 12 hours.

The `authorizationToken` returned is a base64 encoded string that can be
decoded and used in a `⁠docker login⁠` command to authenticate to a
registry. The CLI offers an `get-login-password` command that simplifies
the login process. For more information, see [Registry
authentication](https://docs.aws.amazon.com/AmazonECR/latest/userguide/Registries.html#registry_auth)
in the *Amazon Elastic Container Registry User Guide*.

### Usage

    ecr_get_authorization_token(registryIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecr_get_authorization_token_:_registryIds">registryIds</code></td>
<td><p>A list of Amazon Web Services account IDs that are associated
with the registries for which to get AuthorizationData objects. If you
do not specify a registry, the default registry is assumed.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      authorizationData = list(
        list(
          authorizationToken = "string",
          expiresAt = as.POSIXct(
            "2015-01-01"
          ),
          proxyEndpoint = "string"
        )
      )
    )

### Request syntax

    svc$get_authorization_token(
      registryIds = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example gets an authorization token for your default registry.
    svc$get_authorization_token()

    ## End(Not run)
