<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_list_security_configurations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all the security configurations visible to this account, providing their creation dates and times, and their names

### Description

Lists all the security configurations visible to this account, providing
their creation dates and times, and their names. This call returns a
maximum of 50 clusters per call, but returns a marker to track the
paging of the cluster list across multiple ListSecurityConfigurations
calls.

### Usage

    emr_list_security_configurations(Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emr_list_security_configurations_:_Marker">Marker</code></td>
<td><p>The pagination token that indicates the set of results to
retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SecurityConfigurations = list(
        list(
          Name = "string",
          CreationDateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$list_security_configurations(
      Marker = "string"
    )
