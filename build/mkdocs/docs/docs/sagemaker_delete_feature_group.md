<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_feature_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete the FeatureGroup and any data that was written to the OnlineStore of the FeatureGroup

### Description

Delete the `FeatureGroup` and any data that was written to the
`OnlineStore` of the `FeatureGroup`. Data cannot be accessed from the
`OnlineStore` immediately after `delete_feature_group` is called.

Data written into the `OfflineStore` will not be deleted. The Amazon Web
Services Glue database and tables that are automatically created for
your `OfflineStore` are not deleted.

### Usage

    sagemaker_delete_feature_group(FeatureGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_feature_group_:_FeatureGroupName">FeatureGroupName</code></td>
<td><p>[required] The name of the <code>FeatureGroup</code> you want to
delete. The name must be unique within an Amazon Web Services Region in
an Amazon Web Services account.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_feature_group(
      FeatureGroupName = "string"
    )
