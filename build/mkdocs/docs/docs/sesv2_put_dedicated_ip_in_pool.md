<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_put_dedicated_ip_in_pool</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Move a dedicated IP address to an existing dedicated IP pool

### Description

Move a dedicated IP address to an existing dedicated IP pool.

The dedicated IP address that you specify must already exist, and must
be associated with your Amazon Web Services account.

The dedicated IP pool you specify must already exist. You can create a
new pool by using the `create_dedicated_ip_pool` operation.

### Usage

    sesv2_put_dedicated_ip_in_pool(Ip, DestinationPoolName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sesv2_put_dedicated_ip_in_pool_:_Ip">Ip</code></td>
<td><p>[required] The IP address that you want to move to the dedicated
IP pool. The value you specify has to be a dedicated IP address that's
associated with your Amazon Web Services account.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_put_dedicated_ip_in_pool_:_DestinationPoolName">DestinationPoolName</code></td>
<td><p>[required] The name of the IP pool that you want to add the
dedicated IP address to. You have to specify an IP pool that already
exists.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_dedicated_ip_in_pool(
      Ip = "string",
      DestinationPoolName = "string"
    )
