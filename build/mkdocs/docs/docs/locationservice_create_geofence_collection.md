<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_create_geofence_collection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a geofence collection, which manages and stores geofences

### Description

Creates a geofence collection, which manages and stores geofences.

### Usage

    locationservice_create_geofence_collection(CollectionName, Description,
      KmsKeyId, PricingPlan, PricingPlanDataSource, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_create_geofence_collection_:_CollectionName">CollectionName</code></td>
<td><p>[required] A custom name for the geofence collection.</p>
<p>Requirements:</p>
<ul>
<li><p>Contain only alphanumeric characters (A–Z, a–z, 0–9), hyphens
(-), periods (.), and underscores (_).</p></li>
<li><p>Must be a unique geofence collection name.</p></li>
<li><p>No spaces allowed. For example,
<code>ExampleGeofenceCollection</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="locationservice_create_geofence_collection_:_Description">Description</code></td>
<td><p>An optional description for the geofence collection.</p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_create_geofence_collection_:_KmsKeyId">KmsKeyId</code></td>
<td><p>A key identifier for an <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html">Amazon
Web Services KMS customer managed key</a>. Enter a key ID, key ARN,
alias name, or alias ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_create_geofence_collection_:_PricingPlan">PricingPlan</code></td>
<td><p>No longer used. If included, the only allowed value is
<code>RequestBasedUsage</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_create_geofence_collection_:_PricingPlanDataSource">PricingPlanDataSource</code></td>
<td><p>This parameter is no longer used.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_create_geofence_collection_:_Tags">Tags</code></td>
<td><p>Applies one or more tags to the geofence collection. A tag is a
key-value pair helps manage, identify, search, and filter your resources
by labelling them.</p>
<p>Format: <code>"key" : "value"</code></p>
<p>Restrictions:</p>
<ul>
<li><p>Maximum 50 tags per resource</p></li>
<li><p>Each resource tag must be unique with a maximum of one
value.</p></li>
<li><p>Maximum key length: 128 Unicode characters in UTF-8</p></li>
<li><p>Maximum value length: 256 Unicode characters in UTF-8</p></li>
<li><p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the
following characters: + - = . _ : / @.</p></li>
<li><p>Cannot use "aws:" as a prefix for a key.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CollectionArn = "string",
      CollectionName = "string",
      CreateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$create_geofence_collection(
      CollectionName = "string",
      Description = "string",
      KmsKeyId = "string",
      PricingPlan = "RequestBasedUsage"|"MobileAssetTracking"|"MobileAssetManagement",
      PricingPlanDataSource = "string",
      Tags = list(
        "string"
      )
    )
