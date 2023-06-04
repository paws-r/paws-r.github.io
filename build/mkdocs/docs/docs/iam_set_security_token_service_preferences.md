<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_set_security_token_service_preferences</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the specified version of the global endpoint token as the token version used for the Amazon Web Services account

### Description

Sets the specified version of the global endpoint token as the token
version used for the Amazon Web Services account.

By default, Security Token Service (STS) is available as a global
service, and all STS requests go to a single endpoint at
`⁠https://sts.amazonaws.com⁠`. Amazon Web Services recommends using
Regional STS endpoints to reduce latency, build in redundancy, and
increase session token availability. For information about Regional
endpoints for STS, see [Security Token Service endpoints and
quotas](https://docs.aws.amazon.com/general/latest/gr/sts.html) in the
*Amazon Web Services General Reference*.

If you make an STS call to the global endpoint, the resulting session
tokens might be valid in some Regions but not others. It depends on the
version that is set in this operation. Version 1 tokens are valid only
in Amazon Web Services Regions that are available by default. These
tokens do not work in manually enabled Regions, such as Asia Pacific
(Hong Kong). Version 2 tokens are valid in all Regions. However, version
2 tokens are longer and might affect systems where you temporarily store
tokens. For information, see [Activating and deactivating STS in an
Amazon Web Services
Region](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html)
in the *IAM User Guide*.

To view the current session token version, see the
`GlobalEndpointTokenVersion` entry in the response of the
`get_account_summary` operation.

### Usage

    iam_set_security_token_service_preferences(GlobalEndpointTokenVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_set_security_token_service_preferences_:_GlobalEndpointTokenVersion">GlobalEndpointTokenVersion</code></td>
<td><p>[required] The version of the global endpoint token. Version 1
tokens are valid only in Amazon Web Services Regions that are available
by default. These tokens do not work in manually enabled Regions, such
as Asia Pacific (Hong Kong). Version 2 tokens are valid in all Regions.
However, version 2 tokens are longer and might affect systems where you
temporarily store tokens.</p>
<p>For information, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html">Activating
and deactivating STS in an Amazon Web Services Region</a> in the <em>IAM
User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_security_token_service_preferences(
      GlobalEndpointTokenVersion = "v1Token"|"v2Token"
    )

### Examples

    ## Not run: 
    # The following command sets the STS global endpoint token to version 2.
    # Version 2 tokens are valid in all Regions.
    svc$set_security_token_service_preferences(
      GlobalEndpointTokenVersion = "v2Token"
    )

    ## End(Not run)
