<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_query_lineage</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use this action to inspect your lineage and discover relationships between entities

### Description

Use this action to inspect your lineage and discover relationships
between entities. For more information, see [Querying Lineage
Entities](https://docs.aws.amazon.com/sagemaker/latest/dg/querying-lineage-entities.html)
in the *Amazon SageMaker Developer Guide*.

### Usage

    sagemaker_query_lineage(StartArns, Direction, IncludeEdges, Filters,
      MaxDepth, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_query_lineage_:_StartArns">StartArns</code></td>
<td><p>A list of resource Amazon Resource Name (ARN) that represent the
starting point for your lineage query.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_query_lineage_:_Direction">Direction</code></td>
<td><p>Associations between lineage entities have a direction. This
parameter determines the direction from the StartArn(s) that the query
traverses.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_query_lineage_:_IncludeEdges">IncludeEdges</code></td>
<td><p>Setting this value to <code>True</code> retrieves not only the
entities of interest but also the <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking-entities.html">Associations</a>
and lineage entities on the path. Set to <code>False</code> to only
return lineage entities that match your query.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_query_lineage_:_Filters">Filters</code></td>
<td><p>A set of filtering parameters that allow you to specify which
entities should be returned.</p>
<ul>
<li><p>Properties - Key-value pairs to match on the lineage entities'
properties.</p></li>
<li><p>LineageTypes - A set of lineage entity types to match on. For
example: <code>TrialComponent</code>, <code>Artifact</code>, or
<code>Context</code>.</p></li>
<li><p>CreatedBefore - Filter entities created before this
date.</p></li>
<li><p>ModifiedBefore - Filter entities modified before this
date.</p></li>
<li><p>ModifiedAfter - Filter entities modified after this
date.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_query_lineage_:_MaxDepth">MaxDepth</code></td>
<td><p>The maximum depth in lineage relationships from the
<code>StartArns</code> that are traversed. Depth is a measure of the
number of <code>Associations</code> from the <code>StartArn</code>
entity to the matched results.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_query_lineage_:_MaxResults">MaxResults</code></td>
<td><p>Limits the number of vertices in the results. Use the
<code>NextToken</code> in a response to to retrieve the next page of
results.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_query_lineage_:_NextToken">NextToken</code></td>
<td><p>Limits the number of vertices in the request. Use the
<code>NextToken</code> in a response to to retrieve the next page of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Vertices = list(
        list(
          Arn = "string",
          Type = "string",
          LineageType = "TrialComponent"|"Artifact"|"Context"|"Action"
        )
      ),
      Edges = list(
        list(
          SourceArn = "string",
          DestinationArn = "string",
          AssociationType = "ContributedTo"|"AssociatedWith"|"DerivedFrom"|"Produced"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$query_lineage(
      StartArns = list(
        "string"
      ),
      Direction = "Both"|"Ascendants"|"Descendants",
      IncludeEdges = TRUE|FALSE,
      Filters = list(
        Types = list(
          "string"
        ),
        LineageTypes = list(
          "TrialComponent"|"Artifact"|"Context"|"Action"
        ),
        CreatedBefore = as.POSIXct(
          "2015-01-01"
        ),
        CreatedAfter = as.POSIXct(
          "2015-01-01"
        ),
        ModifiedBefore = as.POSIXct(
          "2015-01-01"
        ),
        ModifiedAfter = as.POSIXct(
          "2015-01-01"
        ),
        Properties = list(
          "string"
        )
      ),
      MaxDepth = 123,
      MaxResults = 123,
      NextToken = "string"
    )
