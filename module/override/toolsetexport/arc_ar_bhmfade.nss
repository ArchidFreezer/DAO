#include "wrappers_h"
#include "arc_constants_h"

void main()
{
    object oArea = GetObjectByTag("bhm600ar_fade_harrowing");
    object oContainer = GetObjectByTag("bhhm600ip_healing_kits");
    object oPnxDagH4 = GetObjectByTag(ARC_IT_DAGG_PHOENIX_HID4);
    object oPnxDagH7 = GetObjectByTag(ARC_IT_DAGG_PHOENIX_HID7);
    object oPnxDagM4 = GetObjectByTag(ARC_IT_DAGG_PHOENIX_MIG4);
    object oPnxDagM7 = GetObjectByTag(ARC_IT_DAGG_PHOENIX_MIG7);

    // Only add the items if they don't already exist
    if (IsObjectValid(oContainer)) {
        if (!IsObjectValid(oPnxDagH4)) CreateItemOnObject(ARC_ITR_DAGG_PHOENIX_HID4, oContainer, 1, "", TRUE);
        if (!IsObjectValid(oPnxDagH7)) CreateItemOnObject(ARC_ITR_DAGG_PHOENIX_HID7, oContainer, 1, "", TRUE);
        if (!IsObjectValid(oPnxDagM4)) CreateItemOnObject(ARC_ITR_DAGG_PHOENIX_MIG4, oContainer, 1, "", TRUE);
        if (!IsObjectValid(oPnxDagM7)) CreateItemOnObject(ARC_ITR_DAGG_PHOENIX_MIG7, oContainer, 1, "", TRUE);
    }
}