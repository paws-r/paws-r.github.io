<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_list_services_by_namespace</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation lists all of the services that are associated with a Cloud Map namespace

### Description

This operation lists all of the services that are associated with a
Cloud Map namespace. This list might include services in different
clusters. In contrast, `list_services` can only list services in one
cluster at a time. If you need to filter the list of services in a
single cluster by various parameters, use `list_services`. For more
information, see [Service
Connect](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html)
in the *Amazon Elastic Container Service Developer Guide*.

### Usage

    ecs_list_services_by_namespace(namespace, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecs_list_services_by_namespace_:_namespace">namespace</code></td>
<td><p>[required] The namespace name or full Amazon Resource Name (ARN)
of the Cloud Map namespace to list the services in.</p>
<p>Tasks that run in a namespace can use short names to connect to
services in the namespace. Tasks can connect to services across all of
the clusters in the namespace. Tasks connect through a managed proxy
container that collects logs and metrics for increased visibility. Only
the tasks that Amazon ECS services create are supported with Service
Connect. For more information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html">Service
Connect</a> in the <em>Amazon Elastic Container Service Developer
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_list_services_by_namespace_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value that's returned from a
<code>list_services_by_namespace</code> request. It indicates that more
results are available to fulfill the request and further calls are
needed. If <code>maxResults</code> is returned, it is possible the
number of results is less than <code>maxResults</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_list_services_by_namespace_:_maxResults">maxResults</code></td>
<td><p>The maximum number of service results that
<code>list_services_by_namespace</code> returns in paginated output.
When this parameter is used, <code>list_services_by_namespace</code>
only returns <code>maxResults</code> results in a single page along with
a <code>nextToken</code> response element. The remaining results of the
initial request can be seen by sending another
<code>list_services_by_namespace</code> request with the returned
<code>nextToken</code> value. This value can be between 1 and 100. If
this parameter isn't used, then <code>list_services_by_namespace</code>
returns up to 10 results and a <code>nextToken</code> value if
applicable.</p></td>
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

    svc$list_services_by_namespace(
      namespace = "string",
      nextToken = "string",
      maxResults = 123
    )
