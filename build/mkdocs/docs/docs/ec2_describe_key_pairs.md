<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_key_pairs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified key pairs or all of your key pairs

### Description

Describes the specified key pairs or all of your key pairs.

For more information about key pairs, see [Amazon EC2 key
pairs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_describe_key_pairs(Filters, KeyNames, KeyPairIds, DryRun,
      IncludePublicKey)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_describe_key_pairs_:_Filters">Filters</code></td>
<td><p>The filters.</p>
<ul>
<li><p><code>key-pair-id</code> - The ID of the key pair.</p></li>
<li><p><code>fingerprint</code> - The fingerprint of the key
pair.</p></li>
<li><p><code>key-name</code> - The name of the key pair.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources assigned a tag with a specific
key, regardless of the tag value.</p></li>
<li><p><code>tag</code>:\&lt;key\&gt; - The key/value combination of a
tag assigned to the resource. Use the tag key in the filter name and the
tag value as the filter value. For example, to find all resources that
have a tag with the key <code>Owner</code> and the value
<code>TeamA</code>, specify <code>tag:Owner</code> for the filter name
and <code>TeamA</code> for the filter value.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_key_pairs_:_KeyNames">KeyNames</code></td>
<td><p>The key pair names.</p>
<p>Default: Describes all of your key pairs.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_key_pairs_:_KeyPairIds">KeyPairIds</code></td>
<td><p>The IDs of the key pairs.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_key_pairs_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_key_pairs_:_IncludePublicKey">IncludePublicKey</code></td>
<td><p>If <code>true</code>, the public key material is included in the
response.</p>
<p>Default: <code>false</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      KeyPairs = list(
        list(
          KeyPairId = "string",
          KeyFingerprint = "string",
          KeyName = "string",
          KeyType = "rsa"|"ed25519",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          PublicKey = "string",
          CreateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$describe_key_pairs(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      KeyNames = list(
        "string"
      ),
      KeyPairIds = list(
        "string"
      ),
      DryRun = TRUE|FALSE,
      IncludePublicKey = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example displays the fingerprint for the specified key.
    svc$describe_key_pairs(
      KeyNames = list(
        "my-key-pair"
      )
    )

    ## End(Not run)
