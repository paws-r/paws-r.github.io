<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_key_pair</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified key pair, by removing the public key from Amazon EC2

### Description

Deletes the specified key pair, by removing the public key from Amazon
EC2.

### Usage

    ec2_delete_key_pair(KeyName, KeyPairId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_delete_key_pair_:_KeyName">KeyName</code></td>
<td><p>The name of the key pair.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_delete_key_pair_:_KeyPairId">KeyPairId</code></td>
<td><p>The ID of the key pair.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_delete_key_pair_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_key_pair(
      KeyName = "string",
      KeyPairId = "string",
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example deletes the specified key pair.
    svc$delete_key_pair(
      KeyName = "my-key-pair"
    )

    ## End(Not run)
