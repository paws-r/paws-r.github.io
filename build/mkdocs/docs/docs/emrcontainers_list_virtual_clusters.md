<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrcontainers_list_virtual_clusters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists information about the specified virtual cluster

### Description

Lists information about the specified virtual cluster. Virtual cluster
is a managed entity on Amazon EMR on EKS. You can create, describe, list
and delete virtual clusters. They do not consume any additional resource
in your system. A single virtual cluster maps to a single Kubernetes
namespace. Given this relationship, you can model virtual clusters the
same way you model Kubernetes namespaces to meet your requirements.

### Usage

    emrcontainers_list_virtual_clusters(containerProviderId,
      containerProviderType, createdAfter, createdBefore, states, maxResults,
      nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emrcontainers_list_virtual_clusters_:_containerProviderId">containerProviderId</code></td>
<td><p>The container provider ID of the virtual cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="emrcontainers_list_virtual_clusters_:_containerProviderType">containerProviderType</code></td>
<td><p>The container provider type of the virtual cluster. Amazon EKS is
the only supported type as of now.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrcontainers_list_virtual_clusters_:_createdAfter">createdAfter</code></td>
<td><p>The date and time after which the virtual clusters are
created.</p></td>
</tr>
<tr class="even">
<td><code
id="emrcontainers_list_virtual_clusters_:_createdBefore">createdBefore</code></td>
<td><p>The date and time before which the virtual clusters are
created.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrcontainers_list_virtual_clusters_:_states">states</code></td>
<td><p>The states of the requested virtual clusters.</p></td>
</tr>
<tr class="even">
<td><code
id="emrcontainers_list_virtual_clusters_:_maxResults">maxResults</code></td>
<td><p>The maximum number of virtual clusters that can be
listed.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrcontainers_list_virtual_clusters_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of virtual clusters to
return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      virtualClusters = list(
        list(
          id = "string",
          name = "string",
          arn = "string",
          state = "RUNNING"|"TERMINATING"|"TERMINATED"|"ARRESTED",
          containerProvider = list(
            type = "EKS",
            id = "string",
            info = list(
              eksInfo = list(
                namespace = "string"
              )
            )
          ),
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          tags = list(
            "string"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_virtual_clusters(
      containerProviderId = "string",
      containerProviderType = "EKS",
      createdAfter = as.POSIXct(
        "2015-01-01"
      ),
      createdBefore = as.POSIXct(
        "2015-01-01"
      ),
      states = list(
        "RUNNING"|"TERMINATING"|"TERMINATED"|"ARRESTED"
      ),
      maxResults = 123,
      nextToken = "string"
    )
