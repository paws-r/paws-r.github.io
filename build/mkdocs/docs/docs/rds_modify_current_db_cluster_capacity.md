<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_modify_current_db_cluster_capacity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Set the capacity of an Aurora Serverless v1 DB cluster to a specific value

### Description

Set the capacity of an Aurora Serverless v1 DB cluster to a specific
value.

Aurora Serverless v1 scales seamlessly based on the workload on the DB
cluster. In some cases, the capacity might not scale fast enough to meet
a sudden change in workload, such as a large number of new transactions.
Call `modify_current_db_cluster_capacity` to set the capacity
explicitly.

After this call sets the DB cluster capacity, Aurora Serverless v1 can
automatically scale the DB cluster based on the cooldown period for
scaling up and the cooldown period for scaling down.

For more information about Aurora Serverless v1, see [Using Amazon
Aurora Serverless
v1](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html)
in the *Amazon Aurora User Guide*.

If you call `modify_current_db_cluster_capacity` with the default
`TimeoutAction`, connections that prevent Aurora Serverless v1 from
finding a scaling point might be dropped. For more information about
scaling points, see [Autoscaling for Aurora Serverless
v1](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/#aurora-serverless.how-it-works.auto-scaling)
in the *Amazon Aurora User Guide*.

This action only applies to Aurora Serverless v1 DB clusters.

### Usage

    rds_modify_current_db_cluster_capacity(DBClusterIdentifier, Capacity,
      SecondsBeforeTimeout, TimeoutAction)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_modify_current_db_cluster_capacity_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>[required] The DB cluster identifier for the cluster being
modified. This parameter isn't case-sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match the identifier of an existing DB cluster.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_current_db_cluster_capacity_:_Capacity">Capacity</code></td>
<td><p>The DB cluster capacity.</p>
<p>When you change the capacity of a paused Aurora Serverless v1 DB
cluster, it automatically resumes.</p>
<p>Constraints:</p>
<ul>
<li><p>For Aurora MySQL, valid capacity values are <code>1</code>,
<code>2</code>, <code>4</code>, <code>8</code>, <code>16</code>,
<code>32</code>, <code>64</code>, <code>128</code>, and
<code>256</code>.</p></li>
<li><p>For Aurora PostgreSQL, valid capacity values are <code>2</code>,
<code>4</code>, <code>8</code>, <code>16</code>, <code>32</code>,
<code>64</code>, <code>192</code>, and <code>384</code>.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="rds_modify_current_db_cluster_capacity_:_SecondsBeforeTimeout">SecondsBeforeTimeout</code></td>
<td><p>The amount of time, in seconds, that Aurora Serverless v1 tries
to find a scaling point to perform seamless scaling before enforcing the
timeout action. The default is 300.</p>
<p>Specify a value between 10 and 600 seconds.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_current_db_cluster_capacity_:_TimeoutAction">TimeoutAction</code></td>
<td><p>The action to take when the timeout is reached, either
<code>ForceApplyCapacityChange</code> or
<code>RollbackCapacityChange</code>.</p>
<p><code>ForceApplyCapacityChange</code>, the default, sets the capacity
to the specified value as soon as possible.</p>
<p><code>RollbackCapacityChange</code> ignores the capacity change if a
scaling point isn't found in the timeout period.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DBClusterIdentifier = "string",
      PendingCapacity = 123,
      CurrentCapacity = 123,
      SecondsBeforeTimeout = 123,
      TimeoutAction = "string"
    )

### Request syntax

    svc$modify_current_db_cluster_capacity(
      DBClusterIdentifier = "string",
      Capacity = 123,
      SecondsBeforeTimeout = 123,
      TimeoutAction = "string"
    )
