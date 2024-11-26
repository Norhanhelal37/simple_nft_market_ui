import 'package:flutter/material.dart';
import 'package:nft/core/resources/image_manager.dart';
import 'package:nft/core/resources/strings_manager.dart';

class StateItem extends StatelessWidget {
  const StateItem({
    super.key, required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "${index + 1}",
            style: const TextStyle(
                color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
            width: 330,
            height: 70,
            child: ListTile(
              leading: SizedBox(
                height: 50,
                width: 50,
                child: Image.asset(
                  ImageManager.kStateImages[index],
                  fit: BoxFit.fill,
                ),
              ),
              title: Text(
                StringsManager.kstateItemTitle[index],
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              subtitle: const Text(
                "View Info",
                style: TextStyle(color: Colors.grey),
              ),
              isThreeLine: true,
              trailing: SizedBox(
                height: 40,
                width: 70,
                child: Row(
                  children: [
                    // SizedBox(width: 30,),
                    const Icon(
                      Icons.share,
                      size: 19,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "${123 * index + 1}",
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
