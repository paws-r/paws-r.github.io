<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrcontainers_delete_virtual_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a virtual cluster

### Description

Deletes a virtual cluster. Virtual cluster is a managed entity on Amazon
EMR on EKS. You can create, describe, list and delete virtual clusters.
They do not consume any additional resource in your system. A single
virtual cluster maps to a single Kubernetes namespace. Given this
relationship, you can model virtual clusters the same way you model
Kubernetes namespaces to meet your requirements.

### Usage

    emrcontainers_delete_virtual_cluster(id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emrcontainers_delete_virtual_cluster_:_id">id</code></td>
<td><p>[required] The ID of the virtual cluster that will be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      id = "string"
    )

### Request syntax

    svc$delete_virtual_cluster(
      id = "string"
    )
