#ifndef LIBRARY_PATH_CLASS_H_
#define LIBRARY_PATH_CLASS_H_

// Include here your libraries dependencies
#include <iostream>

/** @mainpage Library 'library'
 *
 * The main page of the documentation of your library.
 * \code // You can put code in the documentation \endcode
 */

/// Brief description of your library namespace
namespace lib {

/**
 * @brief Brief description of your class
 *
 * Extended description. Format valid for classes and member functions.
 */
class Class
{
private:
	int x_; ///< Brief info of the member variable

public:
	/**
	 * @brief Constructor of the class
	 * @param x Random integer
	 */
	Class(int x);

};

}
#endif
