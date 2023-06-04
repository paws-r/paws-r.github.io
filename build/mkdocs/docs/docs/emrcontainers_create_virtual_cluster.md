<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrcontainers_create_virtual_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a virtual cluster

### Description

Creates a virtual cluster. Virtual cluster is a managed entity on Amazon
EMR on EKS. You can create, describe, list and delete virtual clusters.
They do not consume any additional resource in your system. A single
virtual cluster maps to a single Kubernetes namespace. Given this
relationship, you can model virtual clusters the same way you model
Kubernetes namespaces to meet your requirements.

### Usage

    emrcontainers_create_virtual_cluster(name, containerProvider,
      clientToken, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emrcontainers_create_virtual_cluster_:_name">name</code></td>
<td><p>[required] The specified name of the virtual cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="emrcontainers_create_virtual_cluster_:_containerProvider">containerProvider</code></td>
<td><p>[required] The container provider of the virtual
cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrcontainers_create_virtual_cluster_:_clientToken">clientToken</code></td>
<td><p>[required] The client token of the virtual cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="emrcontainers_create_virtual_cluster_:_tags">tags</code></td>
<td><p>The tags assigned to the virtual cluster.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      id = "string",
      name = "string",
      arn = "string"
    )

### Request syntax

    svc$create_virtual_cluster(
      name = "string",
      containerProvider = list(
        type = "EKS",
        id = "string",
        info = list(
          eksInfo = list(
            namespace = "string"
          )
        )
      ),
      clientToken = "string",
      tags = list(
        "string"
      )
    )
