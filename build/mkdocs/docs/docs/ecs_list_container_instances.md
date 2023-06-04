<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_list_container_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of container instances in a specified cluster

### Description

Returns a list of container instances in a specified cluster. You can
filter the results of a `list_container_instances` operation with
cluster query language statements inside the `filter` parameter. For
more information, see [Cluster Query
Language](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html)
in the *Amazon Elastic Container Service Developer Guide*.

### Usage

    ecs_list_container_instances(cluster, filter, nextToken, maxResults,
      status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecs_list_container_instances_:_cluster">cluster</code></td>
<td><p>The short name or full Amazon Resource Name (ARN) of the cluster
that hosts the container instances to list. If you do not specify a
cluster, the default cluster is assumed.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_list_container_instances_:_filter">filter</code></td>
<td><p>You can filter the results of a
<code>list_container_instances</code> operation with cluster query
language statements. For more information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html">Cluster
Query Language</a> in the <em>Amazon Elastic Container Service Developer
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_list_container_instances_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a
<code>list_container_instances</code> request indicating that more
results are available to fulfill the request and further calls are
needed. If <code>maxResults</code> was provided, it's possible the
number of results to be fewer than <code>maxResults</code>.</p>
<p>This token should be treated as an opaque identifier that is only
used to retrieve the next items in a list and not for other programmatic
purposes.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_list_container_instances_:_maxResults">maxResults</code></td>
<td><p>The maximum number of container instance results that
<code>list_container_instances</code> returned in paginated output. When
this parameter is used, <code>list_container_instances</code> only
returns <code>maxResults</code> results in a single page along with a
<code>nextToken</code> response element. The remaining results of the
initial request can be seen by sending another
<code>list_container_instances</code> request with the returned
<code>nextToken</code> value. This value can be between 1 and 100. If
this parameter isn't used, then <code>list_container_instances</code>
returns up to 100 results and a <code>nextToken</code> value if
applicable.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_list_container_instances_:_status">status</code></td>
<td><p>Filters the container instances by status. For example, if you
specify the <code>DRAINING</code> status, the results include only
container instances that have been set to <code>DRAINING</code> using
<code>update_container_instances_state</code>. If you don't specify this
parameter, the default is to include container instances set to all
states other than <code>INACTIVE</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      containerInstanceArns = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_container_instances(
      cluster = "string",
      filter = "string",
      nextToken = "string",
      maxResults = 123,
      status = "ACTIVE"|"DRAINING"|"REGISTERING"|"DEREGISTERING"|"REGISTRATION_FAILED"
    )

### Examples

    ## Not run: 
    # This example lists all of your available container instances in the
    # specified cluster in your default region.
    svc$list_container_instances(
      cluster = "default"
    )

    ## End(Not run)
