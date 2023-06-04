<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_update_expiration_for_hit</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The UpdateExpirationForHIT operation allows you update the expiration time of a HIT

### Description

The `update_expiration_for_hit` operation allows you update the
expiration time of a HIT. If you update it to a time in the past, the
HIT will be immediately expired.

### Usage

    mturk_update_expiration_for_hit(HITId, ExpireAt)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mturk_update_expiration_for_hit_:_HITId">HITId</code></td>
<td><p>[required] The HIT to update.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_update_expiration_for_hit_:_ExpireAt">ExpireAt</code></td>
<td><p>[required] The date and time at which you want the HIT to
expire</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_expiration_for_hit(
      HITId = "string",
      ExpireAt = as.POSIXct(
        "2015-01-01"
      )
    )
