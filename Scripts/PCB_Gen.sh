#!/bin/bash

gum style --border normal --margin "2" --padding "1 2" --border-foreground 212 "Philip McGaw's PCB Footprint Generator."
NAME=$(gum input --placeholder "What name would you like for your PCB footprint?")

echo -e "Making the file $NAME.kicad_mod"
touch ../Components/_Misc/Generated_PCBs/$NAME.kicad_mod

WIDTH=$(gum input --placeholder "What would you like the width of your PCB to be?")
HEIGHT=$(gum input --placeholder "What would you like the width of your PCB to be?")

HOLEX=$(((WIDTH / 2)-4))
HOLEY=$(((HEIGHT / 2)-4))
EDGEH=$((HEIGHT / 2))
EDGEV=$((HEIGHT / 2))

echo -e "Hole X dim =$HOLEX"
echo -e "Hole Y dim =$HOLEY"
echo -e "Edge H = $EDGEH"
echo -e "Edge V = $EDGEV"


cat > ../Components/_Misc/Generated_PCBs/$NAME.kicad_mod <<'endfootprint'
(footprint "$NAME" (version 20211014) (generator Philips PCB Footprint Generator)
  (layer "F.Cu")
  (tedit 0)
  (fp_text reference "Ref**" (at 0 0) (layer "F.SilkS") hide
    (effects (font (size 1.27 1.27) (thickness 0.15)))
    (tstamp 03114a8e-0c5d-46c5-ad69-548984241720)
  )
  (fp_text value "Val**" (at 0 0) (layer "F.SilkS") hide
    (effects (font (size 1.27 1.27) (thickness 0.15)))
    (tstamp 4cf57653-0d1c-4a97-b5cd-e4ba688fd0c8)
  )
  (fp_text user "https://labbook.skippy.org.uk/projects/kicad/sick_of_beige" (at 0 20 unlocked) (layer "Cmts.User")
    (effects (font (size 1 1) (thickness 0.15)))
    (tstamp 20bcec6b-a4e8-46fb-b7dc-534cdc2c28d8)
  )
  (fp_circle (center -HOLEX -HOLEY) (end -HOLEX -HOLEY) (layer "Cmts.User") (width 0.15) (fill none) (tstamp e6fcc3f7-7d78-49e8-a8eb-e04de95cbf9c))
  (fp_circle (center HOLEX -HOLEY) (end HOLEX -HOLEY) (layer "Cmts.User") (width 0.15) (fill none) (tstamp e6fcc3f7-7d78-49e8-a8eb-e04de95cbf9c))
  (fp_circle (center -HOLEX HOLEY) (end -HOLEX HOLEY) (layer "Cmts.User") (width 0.15) (fill none) (tstamp e6fcc3f7-7d78-49e8-a8eb-e04de95cbf9c))
  (fp_circle (center HOLEX HOLEY) (end HOLEX HOLEY) (layer "Cmts.User") (width 0.15) (fill none) (tstamp e6fcc3f7-7d78-49e8-a8eb-e04de95cbf9c))
  (fp_line (start -15 HOLEY) (end -15 -HOLEY) (layer "Edge.Cuts") (width 0.2) (tstamp 55d3f990-a797-4a9f-8bc4-f63fe1bc2c74))
  (fp_line (start 15 -HOLEY) (end 15 HOLEY) (layer "Edge.Cuts") (width 0.2) (tstamp 6797f805-b119-4618-aaaa-a3ef57b0c605))
  (fp_line (start -HOLEX -15) (end HOLEX -15) (layer "Edge.Cuts") (width 0.2) (tstamp c92c57b0-1cbd-459f-b128-e64f68f57c75))
  (fp_line (start HOLEX 15) (end -HOLEX 15) (layer "Edge.Cuts") (width 0.2) (tstamp c96a45f8-409f-4ab1-97bf-94b4c4108361))
  (fp_arc (start -15 -HOLEY) (mid -13.828427 -13.828427) (end -HOLEX -15) (layer "Edge.Cuts") (width 0.2) (tstamp 76cbba0b-ea06-4f9b-8cdb-75fa45989a84))
  (fp_arc (start HOLEX -15) (mid 13.828427 -13.828427) (end HOLEX -HOLEY) (layer "Edge.Cuts") (width 0.2) (tstamp c050cff3-1fb5-491f-a0df-0a98b9b51772))
  (fp_arc (start 15 HOLEY) (mid 13.828427 13.828427) (end HOLEX 15) (layer "Edge.Cuts") (width 0.2) (tstamp c67addf5-e49d-4d3c-b5f0-778da8b0eb9f))
  (fp_arc (start -HOLEX 15) (mid -13.828427 13.828427) (end -15 HOLEY) (layer "Edge.Cuts") (width 0.2) (tstamp fba8972b-23d9-4c3c-a8c7-595f87981c51))
  (fp_circle (center -HOLEX -HOLEY) (end -HOLEX -HOLEY) (layer "F.CrtYd") (width 0.05) (fill none) (tstamp fcdbef2c-1ed2-434e-9d8d-64c6a5d3ac22))
  (fp_circle (center HOLEX -HOLEY) (end HOLEX -HOLEY) (layer "F.CrtYd") (width 0.05) (fill none) (tstamp fcdbef2c-1ed2-434e-9d8d-64c6a5d3ac22))
  (fp_circle (center -HOLEX HOLEY) (end -HOLEX HOLEY) (layer "F.CrtYd") (width 0.05) (fill none) (tstamp fcdbef2c-1ed2-434e-9d8d-64c6a5d3ac22))
  (fp_circle (center HOLEX HOLEY) (end HOLEX HOLEY) (layer "F.CrtYd") (width 0.05) (fill none) (tstamp fcdbef2c-1ed2-434e-9d8d-64c6a5d3ac22))
  (pad "1" connect circle (at HOLEX -HOLEY) (size 5.6 5.6) (layers "F.Cu" "F.Mask") (tstamp 363c0e3d-55b4-4425-86b2-bfa8a8c950f9))
  (pad "1" connect circle (at -HOLEX HOLEY) (size 5.6 5.6) (layers "F.Cu" "F.Mask") (tstamp 363c0e3d-55b4-4425-86b2-bfa8a8c950f9))
  (pad "1" connect circle (at HOLEX HOLEY) (size 5.6 5.6) (layers "F.Cu" "F.Mask") (tstamp 363c0e3d-55b4-4425-86b2-bfa8a8c950f9))
  (pad "1" connect circle (at -HOLEX -HOLEY) (size 5.6 5.6) (layers "F.Cu" "F.Mask") (tstamp 363c0e3d-55b4-4425-86b2-bfa8a8c950f9))
  (pad "1" thru_hole circle (at HOLEX -HOLEY) (size 3.6 3.6) (drill 3.2) (layers *.Mask "F.Cu" "In1.Cu" "B.Cu") (tstamp 838556a9-6a08-42a2-ae35-f1309acbf54b))
  (pad "1" thru_hole circle (at -HOLEX HOLEY) (size 3.6 3.6) (drill 3.2) (layers *.Mask "F.Cu" "In1.Cu" "B.Cu") (tstamp 838556a9-6a08-42a2-ae35-f1309acbf54b))
  (pad "1" thru_hole circle (at HOLEX HOLEY) (size 3.6 3.6) (drill 3.2) (layers *.Mask "F.Cu" "In1.Cu" "B.Cu") (tstamp 838556a9-6a08-42a2-ae35-f1309acbf54b))
  (pad "1" thru_hole circle (at -HOLEX -HOLEY) (size 3.6 3.6) (drill 3.2) (layers *.Mask "F.Cu" "In1.Cu" "B.Cu") (tstamp 838556a9-6a08-42a2-ae35-f1309acbf54b))
  (pad "1" connect circle (at HOLEX -HOLEY) (size 5.6 5.6) (layers "B.Cu" "B.Mask") (tstamp d834d937-9a71-42cf-b63b-c370c48fd1d5))
  (pad "1" connect circle (at -HOLEX HOLEY) (size 5.6 5.6) (layers "B.Cu" "B.Mask") (tstamp d834d937-9a71-42cf-b63b-c370c48fd1d5))
  (pad "1" connect circle (at HOLEX HOLEY) (size 5.6 5.6) (layers "B.Cu" "B.Mask") (tstamp d834d937-9a71-42cf-b63b-c370c48fd1d5))
  (pad "1" connect circle (at -HOLEX -HOLEY) (size 5.6 5.6) (layers "B.Cu" "B.Mask") (tstamp d834d937-9a71-42cf-b63b-c370c48fd1d5))
  (group "" (id 9a146077-85c2-4a1f-ae0e-acca415b2e07)
    (members
      55d3f990-a797-4a9f-8bc4-f63fe1bc2c74
      6797f805-b119-4618-aaaa-a3ef57b0c605
      76cbba0b-ea06-4f9b-8cdb-75fa45989a84
      c050cff3-1fb5-491f-a0df-0a98b9b51772
      c67addf5-e49d-4d3c-b5f0-778da8b0eb9f
      c92c57b0-1cbd-459f-b128-e64f68f57c75
      c96a45f8-409f-4ab1-97bf-94b4c4108361
      fba8972b-23d9-4c3c-a8c7-595f87981c51
    )
  )
)

endfootprint




sed 's/unix/linux/g' ../Components/_Misc/Generated_PCBs/$NAME.kicad_mod