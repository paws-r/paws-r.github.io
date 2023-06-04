<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>detective_create_graph</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new behavior graph for the calling account, and sets that account as the administrator account

### Description

Creates a new behavior graph for the calling account, and sets that
account as the administrator account. This operation is called by the
account that is enabling Detective.

Before you try to enable Detective, make sure that your account has been
enrolled in Amazon GuardDuty for at least 48 hours. If you do not meet
this requirement, you cannot enable Detective. If you do meet the
GuardDuty prerequisite, then when you make the request to enable
Detective, it checks whether your data volume is within the Detective
quota. If it exceeds the quota, then you cannot enable Detective.

The operation also enables Detective for the calling account in the
currently selected Region. It returns the ARN of the new behavior graph.

`create_graph` triggers a process to create the corresponding data
tables for the new behavior graph.

An account can only be the administrator account for one behavior graph
within a Region. If the same account calls `create_graph` with the same
administrator account, it always returns the same behavior graph ARN. It
does not create a new behavior graph.

### Usage

    detective_create_graph(Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="detective_create_graph_:_Tags">Tags</code></td>
<td><p>The tags to assign to the new behavior graph. You can add up to
50 tags. For each tag, you provide the tag key and the tag value. Each
tag key can contain up to 128 characters. Each tag value can contain up
to 256 characters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GraphArn = "string"
    )

### Request syntax

    svc$create_graph(
      Tags = list(
        "string"
      )
    )
