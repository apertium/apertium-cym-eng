<?xml version="1.0" encoding="UTF-8"?>
<tagger name="welsh">
  <tagset>
    <!-- Closed categories -->
    <def-label name="YNPR" closed="true">
      <tags-item lemma="yn" tags="pr"/>
    </def-label>
    <def-label name="IPR" closed="true">
      <tags-item lemma="i" tags="pr"/>
    </def-label>
    <def-label name="OPR" closed="true">
      <tags-item lemma="o" tags="pr"/>
    </def-label>

    <def-label name="YNPART" closed="true">
      <tags-item lemma="yn" tags="part"/>
    </def-label>

    <def-label name="PRNSUBJP3" closed="true">
      <tags-item tags="prn.subj.p3.*"/>
    </def-label>
    <def-label name="PRNSUBJ" closed="true">
      <tags-item tags="prn.subj.*"/>
    </def-label>
    <def-label name="PRNOBJ" closed="true">
      <tags-item tags="prn.obj.*"/>
    </def-label>
    <def-label name="PRNALTRES" closed="true">
      <tags-item tags="prn.*"/>
    </def-label>

    <def-label name="YRDET" closed="true">
      <tags-item lemma="yr" tags="det.def.*"/>
    </def-label>

    <def-label name="DET" closed="true">
      <tags-item tags="det.dem.*"/>
      <tags-item tags="det.ind.*"/>
      <tags-item tags="det.def.*"/>
      <tags-item tags="det.pos.*"/>
      <tags-item tags="det.itg.*"/>
    </def-label>

    <def-label name="RELAN" closed="true">
      <tags-item tags="rel.an.*"/>
    </def-label>
    <def-label name="RELNN" closed="true">
      <tags-item tags="rel.nn.*"/>
    </def-label>

    <def-label name="CNJSUBS" closed="true">
      <tags-item tags="cnjsub"/>
    </def-label>
    <def-label name="CNJCOORD" closed="true">
      <tags-item tags="cnjcoo"/>
    </def-label>

    <def-label name="NUM" closed="true">
      <tags-item tags="num.*"/>
      <tags-item tags="num"/>
    </def-label>

    <def-label name="PREP" closed="true">
      <tags-item tags="pr"/>
    </def-label>

    <!-- Open categories -->
    <def-label name="NOMF">
      <tags-item tags="n.f.*"/>
    </def-label>
    <def-label name="NOMM">
      <tags-item tags="n.m.*"/>
    </def-label>
    <def-label name="NOMMF">
      <tags-item tags="n.mf.*"/>
    </def-label>

    <def-label name="ADJ">
      <tags-item tags="adj.*"/>
    </def-label>

    <def-label name="ADV">
      <tags-item tags="adv"/>
      <tags-item tags="adv.*"/>
    </def-label>

    <def-label name="ANTROPONIM">
      <tags-item tags="np.ant.*"/>
      <tags-item tags="np.cog.*"/>
    </def-label>
    <def-label name="TOPONIM">
      <tags-item tags="np.top.*"/>
    </def-label>
    <def-label name="NPGEN">
      <tags-item tags="np.*"/>
    </def-label>


    <def-label name="VLEX">
      <tags-item tags="vblex.*"/>
    </def-label>

    <def-label name="VSER">
      <tags-item tags="vbser.*"/>
    </def-label>

    <def-label name="VERBP3">
      <tags-item tags="vblex.*.p3.*"/>
      <tags-item tags="vbser.*.p3.*"/>
    </def-label>

    <def-label name="VLEXINF">
      <tags-item tags="vblex.inf"/>
    </def-label>

    <def-label name="VSERINF">
      <tags-item tags="vbser.inf"/>
    </def-label>

    <def-label name="VLEXIMP">
      <tags-item tags="vblex.imp.*"/>
    </def-label>

  </tagset>

  <forbid>
    <label-sequence>
      <label-item label="TOPONIM"/>
      <label-item label="VLEXIMP"/>
    </label-sequence>
    <label-sequence>
      <label-item label="NPALTRES"/>
      <label-item label="VLEXIMP"/>
    </label-sequence>
    <label-sequence>
      <label-item label="PRNSUBJ"/>
      <label-item label="VLEXINF"/>
    </label-sequence>
    <label-sequence>
      <label-item label="YRDET"/>
      <label-item label="NOMF"/>
    </label-sequence>
    <label-sequence>
      <label-item label="YRDET"/>
      <label-item label="NOMM"/>
    </label-sequence>
    <label-sequence>
      <label-item label="YRDET"/>
      <label-item label="NOMMF"/>
    </label-sequence>
  </forbid>

  <enforce>
    <label-sequence>
      <label-item label="VERBP3"/>
      <label-item label="PRNSUBJP3"/>
    </label-sequence>
    <label-sequence>
      <label-item label="IPR"/>
      <label-item label="VLEXINF"/>
    </label-sequence>
    <label-sequence>
      <label-item label="IPR"/>
      <label-item label="VSERINF"/>
    </label-sequence>
  </enforce>

  <preferences>
   <prefer tags="vblex.pii.p3.sg"/>
   <prefer tags="vbser.pii.p3.sg"/>
   <prefer tags="vblex.prs.p3.sg"/>
   <prefer tags="vbser.prs.p3.sg"/>
   <prefer tags="vblex.cni.p3.sg"/>
   <prefer tags="vbser.cni.p3.sg"/>
   <prefer tags="vblex.pis.p3.sg"/>
   <prefer tags="vbser.pis.p3.sg"/>
  </preferences>

</tagger>
