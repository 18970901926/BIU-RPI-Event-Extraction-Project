package ac.biu.nlp.nlp.ace_uima.analyze;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;

import edu.cuny.qc.util.Utils;

import ac.biu.nlp.nlp.ace_uima.stats.FieldName;
import ac.biu.nlp.nlp.ace_uima.stats.StatsDocument;
import ac.biu.nlp.nlp.ace_uima.stats.StatsDocumentCollection;
import ac.biu.nlp.nlp.ace_uima.stats.StatsException;
import ac.biu.nlp.nlp.ace_uima.stats.StatsFieldType;


public class SignalAnalyzerDocumentCollection extends StatsDocumentCollection {

	@Override
	public void updateDocs(Map<String,String> key, String fieldNameLvl1, String fieldNameLvl2, Object element, boolean isDynamic) throws StatsException {
		// Removing all lines containing docId, folder and category! We don't use it and it takes lots of memory!!!
		
		triggerDoc.startUpdate();
		triggerDoc.update(key, fieldNameLvl1, fieldNameLvl2, element, isDynamic);
		triggerDoc.update(without(key, new String[] {"spec"}), fieldNameLvl1, fieldNameLvl2, element, isDynamic);
		triggerDoc.update(without(key, new String[] {"role"}), fieldNameLvl1, fieldNameLvl2, element, isDynamic);
		triggerDoc.update(without(key, new String[] {"spec", "role"}), fieldNameLvl1, fieldNameLvl2, element, isDynamic);
		triggerDoc.endUpdate();
		
//		argDoc.startUpdate();
//		argDoc.update(key, fieldNameLvl1, fieldNameLvl2, element, isDynamic);
//		argDoc.update(without(key, new String[] {"EventSubType"}), fieldNameLvl1, fieldNameLvl2, element, isDynamic);
//		argDoc.update(without(key, new String[] {"EventSubType", "Role"}), fieldNameLvl1, fieldNameLvl2, element, isDynamic);
//		argDoc.update(without(key, new String[] {"EventSubType", "ArgType"}), fieldNameLvl1, fieldNameLvl2, element, isDynamic);
//		argDoc.update(without(key, new String[] {"EventSubType", "ArgType", "Role"}), fieldNameLvl1, fieldNameLvl2, element, isDynamic);
//		argDoc.endUpdate();
		
//		globalDoc.startUpdate();
//		globalDoc.update(key, fieldNameLvl1, fieldNameLvl2, element, isDynamic);
//		globalDoc.endUpdate();
	}
	
	public void dumpAsCsvFiles(File triggerFile/*, File argFile, File globalFile*/) throws IOException { //add a specific parameter for each specific file
		System.out.printf("%s Starting SignalAnalyzerDocumentCollection.dumpAsCsvFiles()\n", Utils.detailedLog());
		triggerDoc.dumpAsCsv(triggerFile);
		System.out.printf("%s Finishing SignalAnalyzerDocumentCollection.dumpAsCsvFiles()\n", Utils.detailedLog());
//		argDoc.dumpAsCsv(argFile);
//		globalDoc.dumpAsCsv(globalFile);
	}
	
	
	// The documents
	
	@SuppressWarnings("serial")
	private StatsDocument triggerDoc = new StatsDocument(
			Arrays.asList(new String[] {
					/*"folder", "category", "docId", */"spec", "role", "signal", /*"spec-ind", */"deriver", "derivation", "left-sense", "right-sense", "el-agg", "us-agg"
			}),
			new LinkedHashMap<FieldName,StatsFieldType>() {{
				put(new FieldName("SpecItems", "TruePositive"), StatsFieldType.LIST_COUNTS);
				put(new FieldName("SpecItems", "FalsePositive"), StatsFieldType.LIST_COUNTS);
				put(new FieldName("SpecTextItems", "TruePositive"), StatsFieldType.LIST_VALUES);
				put(new FieldName("SpecTextItems", "FalsePositive"), StatsFieldType.LIST_VALUES);
				put(new FieldName("TriggerPerformance", ""), StatsFieldType.SIGNAL_PERFORMANCE_TRIGGER);
				put(new FieldName("ArgDepPerformance", ""), StatsFieldType.SIGNAL_PERFORMANCE_ARG_DEP);
				put(new FieldName("ArgFreePerformance", ""), StatsFieldType.SIGNAL_PERFORMANCE_ARG_FREE);
			}});
	
//	@SuppressWarnings("serial")
//	private StatsDocument argDoc = new StatsDocument(
//			Arrays.asList(new String[] {
//					"EventSubType", "ArgType", "Role"
//			}),
//			new LinkedHashMap<FieldName,StatsFieldType>() {{
//				//put(new FieldName("Perfrmace", ""), StatsFieldType.PERFORMANCE);
//			}});
//	
//	@SuppressWarnings("serial")
//	private StatsDocument globalDoc = new StatsDocument(
//			Arrays.asList(new String[] {
//					"?"
//			}),
//			new LinkedHashMap<FieldName,StatsFieldType>() {{
//				//put(new FieldName("Perfrmace", ""), StatsFieldType.PERFORMANCE);
//			}});
//
}