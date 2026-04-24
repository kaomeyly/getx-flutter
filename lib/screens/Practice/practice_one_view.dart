import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/core/constants/appfonts.dart';
import 'package:getx_project/screens/Practice/practice_one_controller.dart';

class PracticeOneView extends GetView<PracticeOneController> {
  const PracticeOneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                _buildAppbar(),
                SizedBox(height: 30),
                _buildSearch(),
                SizedBox(height: 30),
                _buildCard1(),
                SizedBox(height: 30),
                _buildCard2(),
                SizedBox(height: 20),
                _buildFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAppbar() {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              image: AssetImage("assets/imgs/profile.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "KAO MEYLY".tr,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "what you wanna do today?".tr,
              style: AppFonts.appStyle().copyWith(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Spacer(),
        GestureDetector(
          onTap: () => controller.toggleLanguage(),
          child: Obx(
            () => Row(
              children: [
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage(
                        controller.currentLang.value == "enUs"
                            ? "assets/imgs/flagtuk.png"
                            : "assets/imgs/flagcam.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  "English".tr,
                  style: AppFonts.appStyle().copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSearch() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "GOOD MORNING!".tr,
          style: AppFonts.appStyle().copyWith(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Let's start something!!!".tr,
          style: AppFonts.appStyle().copyWith(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 35),
        TextField(
          decoration: InputDecoration(
            hintText: "Search here...".tr,
            prefixIcon: Icon(Icons.search),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.brown, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black, width: 2),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ],
    );
  }

  Widget _buildCard1() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 201, 200, 200),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.image_search, size: 30),
                SizedBox(height: 10),
                Text(
                  "Import from\nGallery".tr,

                  style: AppFonts.appStyle().copyWith(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Select existing images or PDFs from\nyour storage".tr,

                  style: AppFonts.appStyle().copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCard2() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 201, 200, 200),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.camera_alt_rounded, size: 30),
                SizedBox(height: 10),
                Text(
                  "Scan\nDocument".tr,

                  style: AppFonts.appStyle().copyWith(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Scan a document using\nyour camera".tr,

                  style: AppFonts.appStyle().copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Quick Actions".tr,
          style: AppFonts.appStyle().copyWith(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16),
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 3,
          children: [
            _buildActionButton(
              Icons.camera_alt_outlined,
              "OCR Text".tr,
              isSelected: false,
            ),
            _buildActionButton(Icons.picture_as_pdf_outlined, "Save PDF".tr),
            _buildActionButton(Icons.history, "History".tr),
            _buildActionButton(Icons.favorite_border, "Favourite".tr),
          ],
        ),
      ],
    );
  }

  Widget _buildActionButton(
    IconData icon,
    String label, {
    bool isSelected = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(14),
        border: isSelected
            ? Border.all(color: Colors.black, width: 2)
            : Border.all(color: Colors.transparent),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.black : Colors.grey.shade600,
            size: 20,
          ),
          SizedBox(width: 8),
          Text(
            label,
            style: AppFonts.appStyle().copyWith(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: isSelected ? Colors.black : Colors.grey.shade700,
            ),
          ),
        ],
      ),
    );
  }
}
