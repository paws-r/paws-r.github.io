<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointemail_create_dedicated_ip_pool</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create a new pool of dedicated IP addresses

### Description

Create a new pool of dedicated IP addresses. A pool can include one or
more dedicated IP addresses that are associated with your Amazon
Pinpoint account. You can associate a pool with a configuration set.
When you send an email that uses that configuration set, Amazon Pinpoint
sends it using only the IP addresses in the associated pool.

### Usage

    pinpointemail_create_dedicated_ip_pool(PoolName, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointemail_create_dedicated_ip_pool_:_PoolName">PoolName</code></td>
<td><p>[required] The name of the dedicated IP pool.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointemail_create_dedicated_ip_pool_:_Tags">Tags</code></td>
<td><p>An object that defines the tags (keys and values) that you want
to associate with the pool.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_dedicated_ip_pool(
      PoolName = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
