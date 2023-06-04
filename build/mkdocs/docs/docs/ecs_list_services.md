<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_list_services</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of services

### Description

Returns a list of services. You can filter the results by cluster,
launch type, and scheduling strategy.

### Usage

    ecs_list_services(cluster, nextToken, maxResults, launchType,
      schedulingStrategy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_list_services_:_cluster">cluster</code></td>
<td><p>The short name or full Amazon Resource Name (ARN) of the cluster
to use when filtering the <code>list_services</code> results. If you do
not specify a cluster, the default cluster is assumed.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_list_services_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a
<code>list_services</code> request indicating that more results are
available to fulfill the request and further calls will be needed. If
<code>maxResults</code> was provided, it is possible the number of
results to be fewer than <code>maxResults</code>.</p>
<p>This token should be treated as an opaque identifier that is only
used to retrieve the next items in a list and not for other programmatic
purposes.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_list_services_:_maxResults">maxResults</code></td>
<td><p>The maximum number of service results that
<code>list_services</code> returned in paginated output. When this
parameter is used, <code>list_services</code> only returns
<code>maxResults</code> results in a single page along with a
<code>nextToken</code> response element. The remaining results of the
initial request can be seen by sending another
<code>list_services</code> request with the returned
<code>nextToken</code> value. This value can be between 1 and 100. If
this parameter isn't used, then <code>list_services</code> returns up to
10 results and a <code>nextToken</code> value if applicable.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_list_services_:_launchType">launchType</code></td>
<td><p>The launch type to use when filtering the
<code>list_services</code> results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_list_services_:_schedulingStrategy">schedulingStrategy</code></td>
<td><p>The scheduling strategy to use when filtering the
<code>list_services</code> results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      serviceArns = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_services(
      cluster = "string",
      nextToken = "string",
      maxResults = 123,
      launchType = "EC2"|"FARGATE"|"EXTERNAL",
      schedulingStrategy = "REPLICA"|"DAEMON"
    )

### Examples

    ## Not run: 
    # This example lists the services running in the default cluster for an
    # account.
    svc$list_services()

    ## End(Not run)
